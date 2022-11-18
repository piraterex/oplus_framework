.class public final synthetic Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/FrameTracker$1;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/FrameTracker$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/FrameTracker$1;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/FrameTracker$1;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$1;->lambda$surfaceDestroyed$0$com-android-internal-jank-FrameTracker$1()V

    return-void
.end method
