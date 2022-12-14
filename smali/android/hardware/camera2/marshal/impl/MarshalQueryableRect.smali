.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;
.super Ljava/lang/Object;
.source "MarshalQueryableRect.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist SIZE:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/graphics/Rect;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 69
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public blacklist isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 3
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/graphics/Rect;",
            ">;I)Z"
        }
    .end annotation

    .line 74
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/graphics/Rect;>;"
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
