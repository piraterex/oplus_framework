.class public final synthetic Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->lambda$getTopHeavyHitters$0$com-android-internal-util-HeavyHitterSketch$HeavyHitterSketchImpl(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
