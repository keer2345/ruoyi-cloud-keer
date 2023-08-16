package com.keyi.module.monitor.notifier;

import de.codecentric.boot.admin.server.domain.entities.Instance;
import de.codecentric.boot.admin.server.domain.entities.InstanceRepository;
import de.codecentric.boot.admin.server.domain.events.InstanceEvent;
import de.codecentric.boot.admin.server.domain.events.InstanceStatusChangedEvent;
import de.codecentric.boot.admin.server.notify.AbstractEventNotifier;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Mono;

/**
 * @author keer
 * @date 2023-08-16
 */
@Slf4j
@Component
public class CustomNotifier extends AbstractEventNotifier {

  protected CustomNotifier(InstanceRepository repository) {
    super(repository);
  }

  @Override
  @SuppressWarnings("ALL")
  protected Mono<Void> doNotify(InstanceEvent event, Instance instance) {
    return Mono.fromRunnable(
        () -> {
          // 实例状态改变事件
          if (event instanceof InstanceStatusChangedEvent) {
            String registName = instance.getRegistration().getName();
            String instanceId = event.getInstance().getValue();
            String status = ((InstanceStatusChangedEvent) event).getStatusInfo().getStatus();

            log.info(">>> Instance Status Change: [{}],[{}],[{}]", registName, instanceId, status);
          }
        });
  }
}
