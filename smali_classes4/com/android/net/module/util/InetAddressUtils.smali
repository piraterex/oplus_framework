.class public Lcom/android/net/module/util/InetAddressUtils;
.super Ljava/lang/Object;
.source "InetAddressUtils.java"


# static fields
.field private static final blacklist INET6_ADDR_LENGTH:I = 0x10


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "flags"    # I

    .line 39
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    .local v0, "addressArray":[B
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 41
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_2

    .line 42
    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    .line 43
    .local v1, "v6Address":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 44
    .local v2, "hasScopeId":Z
    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 45
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .end local v1    # "v6Address":Ljava/net/Inet6Address;
    .end local v2    # "hasScopeId":Z
    :cond_2
    return-void
.end method

.method public static blacklist unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 57
    .local v0, "addressArray":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    return-object v1

    .line 62
    :cond_0
    :try_start_0
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 64
    .local v2, "hasScopeId":Z
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 65
    .local v3, "scopeId":I
    :goto_0
    invoke-static {v1, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1

    return-object v1

    .line 68
    .end local v2    # "hasScopeId":Z
    .end local v3    # "scopeId":I
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/net/UnknownHostException;
    return-object v1
.end method
