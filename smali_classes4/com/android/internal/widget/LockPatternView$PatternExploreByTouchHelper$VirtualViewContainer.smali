.class Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualViewContainer"
.end annotation


# instance fields
.field blacklist description:Ljava/lang/CharSequence;

.field final synthetic blacklist this$1:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .line 1513
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->this$1:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    .line 1515
    return-void
.end method
