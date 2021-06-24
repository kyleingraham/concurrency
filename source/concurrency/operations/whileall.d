module concurrency.operations.whileall;

import concurrency;
import concurrency.receiver;
import concurrency.sender;
import concurrency.stoptoken;
import concurrency.utils : spin_yield, casWeak;
import concurrency.operations.race : RaceSender;
import concepts;
import std.traits;

/// Runs both Senders and propagates the value of whoever completes first
/// if both error out the first exception is propagated,
/// uses mir.algebraic if the Sender value types differ
RaceSender!(Senders) whileAll(Senders...)(Senders senders) {
  return RaceSender!(Senders)(senders, true);
}
