.class Landroid/media/AudioMetadata$3$4;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$DataPackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$DataPackage<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioMetadata$3;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioMetadata$3;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioMetadata$3;

    .line 677
    iput-object p1, p0, Landroid/media/AudioMetadata$3$4;->this$0:Landroid/media/AudioMetadata$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Double;)Z
    .locals 2
    .param p1, "output"    # Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .param p2, "obj"    # Ljava/lang/Double;

    .line 686
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->putDouble(D)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 687
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z
    .locals 0

    .line 677
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioMetadata$3$4;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method

.method public blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Double;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 681
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 677
    invoke-virtual {p0, p1}, Landroid/media/AudioMetadata$3$4;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
