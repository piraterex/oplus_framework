.class public final Landroid/app/timezone/RulesState;
.super Ljava/lang/Object;
.source "RulesState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesState$DistroStatus;,
        Landroid/app/timezone/RulesState$StagedOperationType;
    }
.end annotation


# static fields
.field private static final blacklist BYTE_FALSE:B = 0x0t

.field private static final blacklist BYTE_TRUE:B = 0x1t

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/RulesState;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DISTRO_STATUS_INSTALLED:I = 0x2

.field public static final blacklist DISTRO_STATUS_NONE:I = 0x1

.field public static final blacklist DISTRO_STATUS_UNKNOWN:I = 0x0

.field public static final blacklist STAGED_OPERATION_INSTALL:I = 0x3

.field public static final blacklist STAGED_OPERATION_NONE:I = 0x1

.field public static final blacklist STAGED_OPERATION_UNINSTALL:I = 0x2

.field public static final blacklist STAGED_OPERATION_UNKNOWN:I


# instance fields
.field private final blacklist mBaseRulesVersion:Ljava/lang/String;

.field private final blacklist mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

.field private final blacklist mDistroStatus:I

.field private final blacklist mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

.field private final blacklist mOperationInProgress:Z

.field private final blacklist mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

.field private final blacklist mStagedOperationType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;
    .locals 0

    invoke-static {p0}, Landroid/app/timezone/RulesState;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Landroid/app/timezone/RulesState$1;

    invoke-direct {v0}, Landroid/app/timezone/RulesState$1;-><init>()V

    sput-object v0, Landroid/app/timezone/RulesState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V
    .locals 4
    .param p1, "baseRulesVersion"    # Ljava/lang/String;
    .param p2, "distroFormatVersionSupported"    # Landroid/app/timezone/DistroFormatVersion;
    .param p3, "operationInProgress"    # Z
    .param p4, "stagedOperationType"    # I
    .param p5, "stagedDistroRulesVersion"    # Landroid/app/timezone/DistroRulesVersion;
    .param p6, "distroStatus"    # I
    .param p7, "installedDistroRulesVersion"    # Landroid/app/timezone/DistroRulesVersion;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "baseRulesVersion"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateRulesVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    .line 116
    nop

    .line 117
    const-string v0, "distroFormatVersionSupported"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroFormatVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    .line 118
    iput-boolean p3, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    .line 120
    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stagedOperationType != STAGED_OPERATION_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    invoke-static {p4}, Landroid/app/timezone/RulesState;->validateStagedOperation(I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    .line 125
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const-string/jumbo v1, "stagedDistroRulesVersion"

    invoke-static {v0, v1, p5}, Landroid/app/timezone/Utils;->validateConditionalNull(ZLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroRulesVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 129
    invoke-static {p6}, Landroid/app/timezone/RulesState;->validateDistroStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    .line 130
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    const-string v0, "installedDistroRulesVersion"

    invoke-static {v2, v0, p7}, Landroid/app/timezone/Utils;->validateConditionalNull(ZLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroRulesVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 133
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;
    .locals 15
    .param p0, "in"    # Landroid/os/Parcel;

    .line 197
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "baseRulesVersion":Ljava/lang/String;
    const-class v0, Landroid/app/timezone/DistroFormatVersion;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/timezone/DistroFormatVersion;

    .line 199
    .local v9, "distroFormatVersionSupported":Landroid/app/timezone/DistroFormatVersion;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    .line 200
    .local v3, "operationInProgress":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .line 201
    .local v10, "distroStagedState":I
    const-class v0, Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/timezone/DistroRulesVersion;

    .line 202
    .local v11, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .line 203
    .local v12, "installedDistroStatus":I
    const-class v0, Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/timezone/DistroRulesVersion;

    .line 204
    .local v13, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    new-instance v14, Landroid/app/timezone/RulesState;

    move-object v0, v14

    move-object v1, v8

    move-object v2, v9

    move v4, v10

    move-object v5, v11

    move v6, v12

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V

    return-object v14
.end method

.method private static blacklist validateDistroStatus(I)I
    .locals 3
    .param p0, "distroStatus"    # I

    .line 297
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 300
    return p0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown distro status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateStagedOperation(I)I
    .locals 3
    .param p0, "stagedOperationType"    # I

    .line 289
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    .line 293
    return p0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 228
    return v0

    .line 230
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 234
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/timezone/RulesState;

    .line 236
    .local v2, "that":Landroid/app/timezone/RulesState;
    iget-boolean v3, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    iget-boolean v4, v2, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    if-eq v3, v4, :cond_2

    .line 237
    return v1

    .line 239
    :cond_2
    iget v3, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    iget v4, v2, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    if-eq v3, v4, :cond_3

    .line 240
    return v1

    .line 242
    :cond_3
    iget v3, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    iget v4, v2, Landroid/app/timezone/RulesState;->mDistroStatus:I

    if-eq v3, v4, :cond_4

    .line 243
    return v1

    .line 245
    :cond_4
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 246
    return v1

    .line 248
    :cond_5
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    iget-object v4, v2, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v3, v4}, Landroid/app/timezone/DistroFormatVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 249
    return v1

    .line 251
    :cond_6
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_7

    iget-object v4, v2, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 252
    invoke-virtual {v3, v4}, Landroid/app/timezone/DistroRulesVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_7
    iget-object v3, v2, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_8

    .line 253
    :goto_0
    return v1

    .line 255
    :cond_8
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_9

    .line 256
    iget-object v0, v2, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v3, v0}, Landroid/app/timezone/DistroRulesVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 257
    :cond_9
    iget-object v3, v2, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    move v0, v1

    .line 255
    :goto_1
    return v0

    .line 231
    .end local v2    # "that":Landroid/app/timezone/RulesState;
    :cond_b
    :goto_2
    return v1
.end method

.method public blacklist getBaseRulesVersion()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDistroStatus()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    return v0
.end method

.method public blacklist getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    return-object v0
.end method

.method public blacklist getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    return-object v0
.end method

.method public blacklist getStagedOperationType()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 262
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 263
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v2}, Landroid/app/timezone/DistroFormatVersion;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 264
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    add-int/2addr v0, v2

    .line 265
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    add-int/2addr v1, v2

    .line 266
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Landroid/app/timezone/DistroRulesVersion;->hashCode()I

    move-result v2

    goto :goto_0

    .line 268
    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 269
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    add-int/2addr v1, v2

    .line 270
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {v2}, Landroid/app/timezone/DistroRulesVersion;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    nop

    :goto_1
    add-int/2addr v0, v3

    .line 272
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist isBaseVersionNewerThan(Landroid/app/timezone/DistroRulesVersion;)Z
    .locals 2
    .param p1, "distroRulesVersion"    # Landroid/app/timezone/DistroRulesVersion;

    .line 182
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/timezone/DistroRulesVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDistroFormatVersionSupported(Landroid/app/timezone/DistroFormatVersion;)Z
    .locals 1
    .param p1, "distroFormatVersion"    # Landroid/app/timezone/DistroFormatVersion;

    .line 171
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v0, p1}, Landroid/app/timezone/DistroFormatVersion;->supports(Landroid/app/timezone/DistroFormatVersion;)Z

    move-result v0

    return v0
.end method

.method public blacklist isOperationInProgress()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RulesState{mBaseRulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDistroFormatVersionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStagedOperationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStagedDistroRulesVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDistroStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInstalledDistroRulesVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 216
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mBaseRulesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget-boolean v0, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 220
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 221
    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    return-void
.end method
