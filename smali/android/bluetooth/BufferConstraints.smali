.class public final Landroid/bluetooth/BufferConstraints;
.super Ljava/lang/Object;
.source "BufferConstraints.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist BUFFER_CODEC_MAX_NUM:I = 0x20

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BufferConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "BufferConstraints"


# instance fields
.field private blacklist mBufferConstraintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BufferConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBufferConstraints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BufferConstraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/bluetooth/BufferConstraints$1;

    invoke-direct {v0}, Landroid/bluetooth/BufferConstraints$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BufferConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    .line 58
    iget-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    const-class v1, Landroid/bluetooth/BufferConstraint;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BufferConstraint;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BufferConstraint;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "bufferConstraintList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BufferConstraint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BufferConstraint;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist forCodec(I)Landroid/bluetooth/BufferConstraint;
    .locals 2
    .param p1, "codec"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BufferConstraint;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Landroid/bluetooth/BufferConstraints;->mBufferConstraintList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 78
    return-void
.end method
