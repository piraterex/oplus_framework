.class Landroid/media/MediaScannerConnection$1;
.super Landroid/media/IMediaScannerListener$Stub;
.source "MediaScannerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaScannerConnection;

    .line 60
    iput-object p1, p0, Landroid/media/MediaScannerConnection$1;->this$0:Landroid/media/MediaScannerConnection;

    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 63
    return-void
.end method
