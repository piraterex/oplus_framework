.class Landroid/service/dreams/DreamOverlayService$1;
.super Landroid/service/dreams/IDreamOverlay$Stub;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamOverlayService;


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamOverlayService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamOverlayService;

    .line 40
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlay$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callback"    # Landroid/service/dreams/IDreamOverlayCallback;

    .line 44
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    iput-object p2, v0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    .line 45
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    invoke-virtual {v0, p1}, Landroid/service/dreams/DreamOverlayService;->onStartDream(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    return-void
.end method
