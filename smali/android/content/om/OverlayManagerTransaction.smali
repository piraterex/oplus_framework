.class public Landroid/content/om/OverlayManagerTransaction;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayManagerTransaction$Builder;,
        Landroid/content/om/OverlayManagerTransaction$Request;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/content/om/OverlayManagerTransaction$Request;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/om/OverlayManagerTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Landroid/content/om/OverlayManagerTransaction$1;

    invoke-direct {v0}, Landroid/content/om/OverlayManagerTransaction$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayManagerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "request":I
    const-class v3, Landroid/content/om/OverlayIdentifier;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayIdentifier;

    .line 71
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 72
    .local v5, "userId":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v4

    .line 73
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    new-instance v7, Landroid/content/om/OverlayManagerTransaction$Request;

    invoke-direct {v7, v2, v3, v5, v4}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "request":I
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/om/OverlayManagerTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/om/OverlayManagerTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayManagerTransaction$Request;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    .line 63
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OverlayManagerTransaction { mRequests = %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 248
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 249
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 251
    iget-object v2, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 252
    .local v2, "req":Landroid/content/om/OverlayManagerTransaction$Request;
    iget v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 254
    iget v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 250
    .end local v2    # "req":Landroid/content/om/OverlayManagerTransaction$Request;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
