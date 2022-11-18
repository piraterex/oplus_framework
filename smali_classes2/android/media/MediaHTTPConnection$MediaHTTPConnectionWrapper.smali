.class Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;
.super Ljava/lang/Object;
.source "MediaHTTPConnection.java"

# interfaces
.implements Landroid/media/IMediaHTTPConnectionWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaHTTPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaHTTPConnectionWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaHTTPConnection;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaHTTPConnection;)V
    .locals 0

    .line 580
    iput-object p1, p0, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;->this$0:Landroid/media/MediaHTTPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaHTTPConnection;Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;-><init>(Landroid/media/MediaHTTPConnection;)V

    return-void
.end method


# virtual methods
.method public blacklist getCurrentOffset()J
    .locals 2

    .line 586
    iget-object v0, p0, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;->this$0:Landroid/media/MediaHTTPConnection;

    invoke-static {v0}, Landroid/media/MediaHTTPConnection;->-$$Nest$fgetmCurrentOffset(Landroid/media/MediaHTTPConnection;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getExtImpl()Landroid/media/IMediaHTTPConnectionExt;
    .locals 1

    .line 582
    iget-object v0, p0, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;->this$0:Landroid/media/MediaHTTPConnection;

    invoke-static {v0}, Landroid/media/MediaHTTPConnection;->-$$Nest$fgetmMediaHTTPConnectionExt(Landroid/media/MediaHTTPConnection;)Landroid/media/IMediaHTTPConnectionExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 594
    iget-object v0, p0, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;->this$0:Landroid/media/MediaHTTPConnection;

    invoke-static {v0}, Landroid/media/MediaHTTPConnection;->-$$Nest$fgetmInputStream(Landroid/media/MediaHTTPConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist seekTo(J)V
    .locals 1
    .param p1, "offset"    # J

    .line 599
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;->this$0:Landroid/media/MediaHTTPConnection;

    invoke-static {v0, p1, p2}, Landroid/media/MediaHTTPConnection;->-$$Nest$mseekTo(Landroid/media/MediaHTTPConnection;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 602
    :goto_0
    return-void
.end method

.method public blacklist setCurrentOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .line 590
    iget-object v0, p0, Landroid/media/MediaHTTPConnection$MediaHTTPConnectionWrapper;->this$0:Landroid/media/MediaHTTPConnection;

    invoke-static {v0, p1, p2}, Landroid/media/MediaHTTPConnection;->-$$Nest$fputmCurrentOffset(Landroid/media/MediaHTTPConnection;J)V

    .line 591
    return-void
.end method
