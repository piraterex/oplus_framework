.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_HAS_SESSION:I = 0x4

.field private static final blacklist FLAG_IS_VIRTUAL_INT:I = 0x1

.field private static final blacklist FLAG_IS_VIRTUAL_LONG:I = 0x2

.field public static final blacklist NO_SESSION:I


# instance fields
.field private blacklist mFlags:I

.field private blacklist mSessionId:I

.field private final greylist-max-o mViewId:I

.field private final blacklist mVirtualIntId:I

.field private final blacklist mVirtualLongId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 6
    .param p1, "id"    # I

    .line 46
    const/4 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .locals 6
    .param p1, "hostId"    # I
    .param p2, "virtualChildId"    # I

    .line 58
    int-to-long v3, p2

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(IIJI)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "parentId"    # I
    .param p3, "virtualChildId"    # J
    .param p5, "sessionId"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 69
    iput p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 70
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    long-to-int v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    .line 71
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move-wide v0, p3

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    .line 72
    iput p5, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJILandroid/view/autofill/AutofillId-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;I)V
    .locals 6
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # I

    .line 52
    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;JI)V
    .locals 6
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # J
    .param p4, "sessionId"    # I

    .line 64
    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v1, 0x6

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 65
    return-void
.end method

.method public static blacklist withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;
    .locals 8
    .param p0, "id"    # Landroid/view/autofill/AutofillId;

    .line 79
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v7, v0, -0x5

    .line 81
    .local v7, "flags":I
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    move-wide v4, v0

    goto :goto_0

    .line 82
    :cond_0
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    int-to-long v0, v0

    move-wide v4, v0

    :goto_0
    nop

    .line 83
    .local v4, "virtualChildId":J
    new-instance v0, Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v6, 0x0

    move-object v1, v0

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 191
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 192
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 193
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 194
    .local v2, "other":Landroid/view/autofill/AutofillId;
    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v3, v4, :cond_3

    return v1

    .line 195
    :cond_3
    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v3, v4, :cond_4

    return v1

    .line 196
    :cond_4
    iget-wide v3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v5, v2, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v1

    .line 197
    :cond_5
    iget v3, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mSessionId:I

    if-eq v3, v4, :cond_6

    return v1

    .line 198
    :cond_6
    return v0
.end method

.method public blacklist equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z
    .locals 6
    .param p1, "other"    # Landroid/view/autofill/AutofillId;

    .line 204
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 205
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 206
    :cond_1
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 207
    :cond_2
    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 208
    :cond_3
    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v4, p1, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 209
    :cond_4
    return v0
.end method

.method public blacklist getSessionId()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return v0
.end method

.method public greylist-max-o getViewId()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return v0
.end method

.method public blacklist getVirtualChildIntId()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return v0
.end method

.method public blacklist getVirtualChildLongId()J
    .locals 2

    .line 112
    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    return-wide v0
.end method

.method public blacklist hasSession()Z
    .locals 1

    .line 153
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    .line 179
    const/16 v0, 0x1f

    .line 180
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 181
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    add-int/2addr v2, v3

    .line 182
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    add-int/2addr v1, v3

    .line 183
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 184
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    add-int/2addr v1, v3

    .line 185
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isNonVirtual()Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isVirtualInt()Z
    .locals 2

    .line 125
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isVirtualLong()Z
    .locals 1

    .line 138
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist resetSessionId()V
    .locals 1

    .line 169
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 171
    return-void
.end method

.method public blacklist setSessionId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 163
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 164
    iput p1, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 165
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    :cond_2
    :goto_0
    return-void
.end method
