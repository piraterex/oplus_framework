.class public final Landroid/os/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Temperature$Type;,
        Landroid/os/Temperature$ThrottlingStatus;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist THROTTLING_CRITICAL:I = 0x4

.field public static final blacklist THROTTLING_EMERGENCY:I = 0x5

.field public static final blacklist THROTTLING_LIGHT:I = 0x1

.field public static final blacklist THROTTLING_MODERATE:I = 0x2

.field public static final blacklist THROTTLING_NONE:I = 0x0

.field public static final blacklist THROTTLING_SEVERE:I = 0x3

.field public static final blacklist THROTTLING_SHUTDOWN:I = 0x6

.field public static final blacklist TYPE_BATTERY:I = 0x2

.field public static final blacklist TYPE_BCL_CURRENT:I = 0x7

.field public static final blacklist TYPE_BCL_PERCENTAGE:I = 0x8

.field public static final blacklist TYPE_BCL_VOLTAGE:I = 0x6

.field public static final blacklist TYPE_CPU:I = 0x0

.field public static final blacklist TYPE_GPU:I = 0x1

.field public static final blacklist TYPE_NPU:I = 0x9

.field public static final blacklist TYPE_POWER_AMPLIFIER:I = 0x5

.field public static final blacklist TYPE_SKIN:I = 0x3

.field public static final blacklist TYPE_UNKNOWN:I = -0x1

.field public static final blacklist TYPE_USB_PORT:I = 0x4


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mStatus:I

.field private final greylist-max-o mType:I

.field private final greylist-max-o mValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Landroid/os/Temperature$1;

    invoke-direct {v0}, Landroid/os/Temperature$1;-><init>()V

    sput-object v0, Landroid/os/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FILjava/lang/String;I)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p2}, Landroid/os/Temperature;->isValidType(I)Z

    move-result v0

    const-string v1, "Invalid Type"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 116
    invoke-static {p4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v0

    const-string v1, "Invalid Status"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 117
    iput p1, p0, Landroid/os/Temperature;->mValue:F

    .line 118
    iput p2, p0, Landroid/os/Temperature;->mType:I

    .line 119
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    .line 120
    iput p4, p0, Landroid/os/Temperature;->mStatus:I

    .line 121
    return-void
.end method

.method public static blacklist isValidStatus(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 110
    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isValidType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 101
    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 176
    instance-of v0, p1, Landroid/os/Temperature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 177
    return v1

    .line 179
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Temperature;

    .line 180
    .local v0, "other":Landroid/os/Temperature;
    iget v2, v0, Landroid/os/Temperature;->mValue:F

    iget v3, p0, Landroid/os/Temperature;->mValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/os/Temperature;->mType:I

    iget v3, p0, Landroid/os/Temperature;->mType:I

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/os/Temperature;->mStatus:I

    iget v3, p0, Landroid/os/Temperature;->mStatus:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 180
    :goto_0
    return v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatus()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/os/Temperature;->mStatus:I

    return v0
.end method

.method public greylist-max-o getType()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/os/Temperature;->mType:I

    return v0
.end method

.method public greylist-max-o getValue()F
    .locals 1

    .line 129
    iget v0, p0, Landroid/os/Temperature;->mValue:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 167
    iget-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 168
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Temperature;->mValue:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 169
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/os/Temperature;->mType:I

    add-int/2addr v0, v2

    .line 170
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Temperature;->mStatus:I

    add-int/2addr v1, v2

    .line 171
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temperature{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Temperature;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Temperature;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 186
    iget v0, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 187
    iget v0, p0, Landroid/os/Temperature;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Landroid/os/Temperature;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return-void
.end method
