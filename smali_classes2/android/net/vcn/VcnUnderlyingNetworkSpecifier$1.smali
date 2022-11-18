.class Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "VcnUnderlyingNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 67
    .local v0, "subIds":[I
    new-instance v1, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    invoke-direct {v1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;-><init>([I)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
    .locals 1
    .param p1, "size"    # I

    .line 72
    new-array v0, p1, [Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;->newArray(I)[Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
