.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;
.super Ljava/lang/Object;
.source "MarshalQueryableArray.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;,
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const-class v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 42
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist unmarshalPrimitiveArray(Ljava/lang/Object;ILjava/nio/ByteBuffer;Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;)V
    .locals 1
    .param p0, "arr"    # Ljava/lang/Object;
    .param p1, "size"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "filler"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 99
    invoke-interface {p3, p0, v0, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;->fillPosition(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_0
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
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public blacklist isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 239
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method
