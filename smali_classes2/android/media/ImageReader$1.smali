.class Landroid/media/ImageReader$1;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ImageReader;->postEventFromNative(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$ir:Landroid/media/ImageReader;

.field final synthetic blacklist val$listener:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/media/ImageReader;)V
    .locals 0

    .line 913
    iput-object p1, p0, Landroid/media/ImageReader$1;->val$listener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object p2, p0, Landroid/media/ImageReader$1;->val$ir:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 916
    iget-object v0, p0, Landroid/media/ImageReader$1;->val$listener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v1, p0, Landroid/media/ImageReader$1;->val$ir:Landroid/media/ImageReader;

    invoke-interface {v0, v1}, Landroid/media/ImageReader$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;)V

    .line 917
    return-void
.end method
