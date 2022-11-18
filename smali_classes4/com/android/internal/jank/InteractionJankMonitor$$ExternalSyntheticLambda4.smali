.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/InteractionJankMonitor;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    return-void
.end method


# virtual methods
.method public final blacklist onCujEvents(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$createFrameTracker$1$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V

    return-void
.end method
