.class public Landroid/net/lowpan/LowpanIdentity;
.super Ljava/lang/Object;
.source "LowpanIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanIdentity$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNSPECIFIED_CHANNEL:I = -0x1

.field public static final blacklist UNSPECIFIED_PANID:I = -0x1


# instance fields
.field private blacklist mChannel:I

.field private blacklist mIsNameValid:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPanid:I

.field private blacklist mRawName:[B

.field private blacklist mType:Ljava/lang/String;

.field private blacklist mXpanid:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsNameValid(Landroid/net/lowpan/LowpanIdentity;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannel(Landroid/net/lowpan/LowpanIdentity;I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNameValid(Landroid/net/lowpan/LowpanIdentity;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmName(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPanid(Landroid/net/lowpan/LowpanIdentity;I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRawName(Landroid/net/lowpan/LowpanIdentity;[B)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmXpanid(Landroid/net/lowpan/LowpanIdentity;[B)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const-class v0, Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    .line 236
    new-instance v0, Landroid/net/lowpan/LowpanIdentity$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    .line 139
    const/4 v1, 0x0

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 140
    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 141
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 143
    iput v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 202
    instance-of v0, p1, Landroid/net/lowpan/LowpanIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 203
    return v1

    .line 205
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanIdentity;

    .line 206
    .local v0, "rhs":Landroid/net/lowpan/LowpanIdentity;
    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 207
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    iget v3, v0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    iget v3, v0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 206
    :goto_0
    return v1
.end method

.method public blacklist getChannel()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPanid()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return v0
.end method

.method public blacklist getRawName()[B
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getXpanid()[B
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 215
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 216
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 215
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNameValid()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanIdentity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    const-string v1, ", Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 186
    const-string v1, ", XPANID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_1
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 190
    const-string v1, ", PANID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "0x%04X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_2
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-eq v1, v2, :cond_3

    .line 194
    const-string v1, ", Channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 197
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 231
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return-void
.end method
