.class Landroid/view/ScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor blacklist <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ScaleGestureDetector;

    .line 405
    iput-object p1, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 409
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->-$$Nest$fputmAnchoredScaleStartX(Landroid/view/ScaleGestureDetector;F)V

    .line 410
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->-$$Nest$fputmAnchoredScaleStartY(Landroid/view/ScaleGestureDetector;F)V

    .line 411
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->-$$Nest$fputmAnchoredScaleMode(Landroid/view/ScaleGestureDetector;I)V

    .line 412
    return v1
.end method
