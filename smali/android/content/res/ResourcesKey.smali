.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final greylist-max-o mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field public greylist-max-o mDisplayId:I

.field private final greylist-max-o mHash:I

.field public final greylist-max-o mLibDirs:[Ljava/lang/String;

.field public final blacklist mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field public final blacklist mOverlayPaths:[Ljava/lang/String;

.field public final greylist-max-o mOverrideConfiguration:Landroid/content/res/Configuration;

.field public final greylist mResDir:Ljava/lang/String;

.field public final greylist mSplitResDirs:[Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 9
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 106
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V
    .locals 6
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 78
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    .line 79
    iput-object p4, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 80
    if-eqz p8, :cond_0

    array-length v0, p8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p8

    :goto_0
    iput-object v0, p0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 81
    iput p5, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 82
    new-instance v1, Landroid/content/res/Configuration;

    if-eqz p6, :cond_1

    .line 83
    move-object v2, p6

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_1
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 84
    if-eqz p7, :cond_2

    move-object v2, p7

    goto :goto_2

    :cond_2
    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    :goto_2
    iput-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 86
    const/16 v3, 0x11

    .line 87
    .local v3, "hash":I
    mul-int/lit8 v4, v3, 0x1f

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    .line 88
    .end local v3    # "hash":I
    .local v4, "hash":I
    mul-int/lit8 v3, v4, 0x1f

    invoke-static {p2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    .line 89
    .end local v4    # "hash":I
    .restart local v3    # "hash":I
    mul-int/lit8 v4, v3, 0x1f

    invoke-static {p3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    .line 90
    .end local v3    # "hash":I
    .restart local v4    # "hash":I
    mul-int/lit8 v3, v4, 0x1f

    invoke-static {p4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    .line 91
    .end local v4    # "hash":I
    .restart local v3    # "hash":I
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    .line 92
    .end local v3    # "hash":I
    .restart local v4    # "hash":I
    mul-int/lit8 v3, v4, 0x1f

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v3, v1

    .line 93
    .end local v4    # "hash":I
    .restart local v3    # "hash":I
    mul-int/lit8 v1, v3, 0x1f

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 94
    .end local v3    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 95
    .end local v1    # "hash":I
    .local v2, "hash":I
    iput v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 96
    return-void
.end method

.method private static greylist-max-o anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 125
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 126
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    const/4 v0, 0x1

    return v0

    .line 125
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    instance-of v0, p1, Landroid/content/res/ResourcesKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    return v1

    .line 145
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 146
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mHash:I

    if-eq v2, v3, :cond_1

    .line 148
    return v1

    .line 151
    :cond_1
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    return v1

    .line 154
    :cond_2
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 155
    return v1

    .line 157
    :cond_3
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 158
    return v1

    .line 160
    :cond_4
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 161
    return v1

    .line 163
    :cond_5
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v2, v3, :cond_6

    .line 164
    return v1

    .line 166
    :cond_6
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 167
    return v1

    .line 169
    :cond_7
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 170
    return v1

    .line 172
    :cond_8
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 173
    return v1

    .line 175
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o hasOverrideConfiguration()Z
    .locals 2

    .line 111
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public greylist-max-o isPathReferenced(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return v1

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 119
    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 118
    :goto_1
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourcesKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " mHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, " mResDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, " mSplitDirs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 185
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v3, " mOverlayDirs=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 190
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v3, " mLibDirs=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 195
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, " mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v3}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, " mCompatInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, " mLoaders=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz v1, :cond_3

    .line 204
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_3
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
