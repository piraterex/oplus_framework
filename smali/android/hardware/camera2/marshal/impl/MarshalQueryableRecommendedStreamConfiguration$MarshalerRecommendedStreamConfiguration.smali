.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration$MarshalerRecommendedStreamConfiguration;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRecommendedStreamConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRecommendedStreamConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
            ">;I)V"
        }
    .end annotation

    .line 41
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/RecommendedStreamConfiguration;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration$MarshalerRecommendedStreamConfiguration;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist getNativeSize()I
    .locals 1

    .line 67
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist marshal(Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p1}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getFormat()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p1}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->isInput()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getUsecaseBitmap()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    return-void
.end method

.method public bridge synthetic blacklist marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 38
    check-cast p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration$MarshalerRecommendedStreamConfiguration;->marshal(Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .locals 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 57
    .local v6, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 58
    .local v7, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 59
    .local v8, "format":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 60
    .local v4, "input":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 62
    .local v9, "usecaseBitmap":I
    new-instance v10, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    move-object v0, v10

    move v1, v8

    move v2, v6

    move v3, v7

    move v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;-><init>(IIIZI)V

    return-object v10
.end method

.method public bridge synthetic blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration$MarshalerRecommendedStreamConfiguration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    move-result-object p1

    return-object p1
.end method
