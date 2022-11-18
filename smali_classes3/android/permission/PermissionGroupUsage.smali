.class public final Landroid/permission/PermissionGroupUsage;
.super Ljava/lang/Object;
.source "PermissionGroupUsage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActive:Z

.field private final blacklist mAttributionLabel:Ljava/lang/CharSequence;

.field private final blacklist mAttributionTag:Ljava/lang/CharSequence;

.field private final blacklist mLastAccessTimeMillis:J

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPermissionGroupName:Ljava/lang/String;

.field private final blacklist mPhoneCall:Z

.field private final blacklist mProxyLabel:Ljava/lang/CharSequence;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 297
    new-instance v0, Landroid/permission/PermissionGroupUsage$1;

    invoke-direct {v0}, Landroid/permission/PermissionGroupUsage$1;-><init>()V

    sput-object v0, Landroid/permission/PermissionGroupUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .local v0, "flg":I
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 270
    .local v1, "active":Z
    :goto_0
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 271
    .local v2, "phoneCall":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 273
    .local v4, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 274
    .local v5, "lastAccessTimeMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "permissionGroupName":Ljava/lang/String;
    and-int/lit8 v8, v0, 0x40

    const/4 v9, 0x0

    if-nez v8, :cond_2

    move-object v8, v9

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    .line 276
    .local v8, "attributionTag":Ljava/lang/CharSequence;
    :goto_2
    and-int/lit16 v10, v0, 0x80

    if-nez v10, :cond_3

    move-object v10, v9

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v10

    .line 277
    .local v10, "attributionLabel":Ljava/lang/CharSequence;
    :goto_3
    and-int/lit16 v11, v0, 0x100

    if-nez v11, :cond_4

    move-object v11, v9

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v11

    .line 279
    .local v11, "proxyLabel":Ljava/lang/CharSequence;
    :goto_4
    iput-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 280
    const-class v12, Landroid/annotation/NonNull;

    invoke-static {v12, v9, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 282
    iput v4, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    .line 283
    iput-wide v5, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    .line 284
    iput-object v7, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 285
    const-class v12, Landroid/annotation/NonNull;

    invoke-static {v12, v9, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 287
    iput-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    .line 288
    iput-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    .line 289
    iput-object v8, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 290
    iput-object v10, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 291
    iput-object v11, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 294
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "lastAccessTimeMillis"    # J
    .param p5, "permissionGroupName"    # Ljava/lang/String;
    .param p6, "active"    # Z
    .param p7, "phoneCall"    # Z
    .param p8, "attributionTag"    # Ljava/lang/CharSequence;
    .param p9, "attributionLabel"    # Ljava/lang/CharSequence;
    .param p10, "proxyLabel"    # Ljava/lang/CharSequence;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 84
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 86
    iput p2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    .line 87
    iput-wide p3, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    .line 88
    iput-object p5, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 89
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 91
    iput-boolean p6, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    .line 92
    iput-boolean p7, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    .line 93
    iput-object p8, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 94
    iput-object p9, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 95
    iput-object p10, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 98
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 200
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/permission/PermissionGroupUsage;

    .line 204
    .local v2, "that":Landroid/permission/PermissionGroupUsage;
    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 205
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    iget v4, v2, Landroid/permission/PermissionGroupUsage;->mUid:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    iget-wide v5, v2, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 208
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    iget-boolean v4, v2, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    iget-boolean v4, v2, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 211
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 212
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 213
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 204
    :goto_0
    return v0

    .line 200
    .end local v2    # "that":Landroid/permission/PermissionGroupUsage;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAttributionLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/CharSequence;
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLastAccessTimeMillis()J
    .locals 2

    .line 122
    iget-wide v0, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissionGroupName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 222
    const/4 v0, 0x1

    .line 223
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 224
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    add-int/2addr v0, v2

    .line 225
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 226
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 227
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 228
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 229
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 230
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 231
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 232
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist isActive()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    return v0
.end method

.method public whitelist isPhoneCall()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroupUsage { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastAccessTimeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permissionGroupName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxyLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    .line 243
    :cond_0
    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    .line 244
    :cond_1
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    .line 245
    :cond_2
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    .line 246
    :cond_3
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    .line 247
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget v1, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-wide v1, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 253
    :cond_5
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 254
    :cond_6
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 255
    :cond_7
    return-void
.end method
