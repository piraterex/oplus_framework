.class Lcom/android/internal/widget/PointerLocationView$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/PointerLocationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/PointerLocationView;

    .line 1052
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSystemGestureExclusionChanged$0$com-android-internal-widget-PointerLocationView$1(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "exclusion"    # Landroid/graphics/Region;
    .param p2, "rejected"    # Landroid/graphics/Region;

    .line 1065
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusion(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1066
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$fgetmSystemGestureExclusionRejected(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1067
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 1068
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 1069
    return-void
.end method

.method public blacklist onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "systemGestureExclusion"    # Landroid/graphics/Region;
    .param p3, "systemGestureExclusionUnrestricted"    # Landroid/graphics/Region;

    .line 1056
    invoke-static {p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 1057
    .local v0, "exclusion":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1058
    .local v1, "rejected":Landroid/graphics/Region;
    if-eqz p3, :cond_0

    .line 1059
    invoke-virtual {v1, p3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1060
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1062
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1063
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 1064
    new-instance v3, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/widget/PointerLocationView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;Landroid/graphics/Region;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1071
    :cond_1
    return-void
.end method
