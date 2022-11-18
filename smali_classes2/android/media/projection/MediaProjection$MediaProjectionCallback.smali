.class final Landroid/media/projection/MediaProjection$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/projection/MediaProjection;


# direct methods
.method private constructor blacklist <init>(Landroid/media/projection/MediaProjection;)V
    .locals 0

    .line 250
    iput-object p1, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$MediaProjectionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onStop()V
    .locals 2

    .line 253
    iget-object v0, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    invoke-static {v0}, Landroid/media/projection/MediaProjection;->-$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    .line 254
    .local v1, "cbr":Landroid/media/projection/MediaProjection$CallbackRecord;
    invoke-virtual {v1}, Landroid/media/projection/MediaProjection$CallbackRecord;->onStop()V

    .line 255
    .end local v1    # "cbr":Landroid/media/projection/MediaProjection$CallbackRecord;
    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method
