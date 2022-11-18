.class public Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenshotGraphicBuffer"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/SurfaceControl;


# direct methods
.method public constructor whitelist <init>(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/SurfaceControl;

    .line 4348
    iput-object p1, p0, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->this$0:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
