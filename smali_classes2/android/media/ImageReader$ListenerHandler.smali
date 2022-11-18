.class final Landroid/media/ImageReader$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor blacklist <init>(Landroid/media/ImageReader;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1108
    iput-object p1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    .line 1109
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1110
    return-void
.end method
