.class public final Landroid/view/WindowInsets$Builder;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlwaysConsumeSystemBars:Z

.field private blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private blacklist mIsRound:Z

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private blacklist mStableInsetsConsumed:Z

.field private blacklist mSystemInsetsConsumed:Z

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1101
    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1104
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1109
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1115
    const/16 v0, 0x9

    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1116
    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1117
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    .line 1118
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1101
    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1104
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1109
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1126
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1127
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1128
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z

    move-result-object v0

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    .line 1129
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1130
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1131
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1132
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1133
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    .line 1134
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmAlwaysConsumeSystemBars(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mAlwaysConsumeSystemBars:Z

    .line 1135
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1136
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/WindowInsets;
    .locals 13

    .line 1401
    new-instance v11, Landroid/view/WindowInsets;

    iget-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v2, v0

    .line 1402
    :goto_0
    iget-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v0

    :goto_1
    iget-object v4, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    iget-boolean v5, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    iget-boolean v6, p0, Landroid/view/WindowInsets$Builder;->mAlwaysConsumeSystemBars:Z

    iget-object v7, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v8, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v9, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1404
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v10

    const/4 v12, 0x0

    move-object v0, v11

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v12

    invoke-direct/range {v0 .. v10}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 1401
    return-object v11
.end method

.method public blacklist setAlwaysConsumeSystemBars(Z)Landroid/view/WindowInsets$Builder;
    .locals 0
    .param p1, "alwaysConsumeSystemBars"    # Z

    .line 1390
    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mAlwaysConsumeSystemBars:Z

    .line 1391
    return-object p0
.end method

.method public whitelist setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;
    .locals 4
    .param p1, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 1326
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    :goto_0
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1327
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1328
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    .line 1329
    .local v0, "safeInsets":Landroid/graphics/Insets;
    const/16 v1, 0x80

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    .line 1330
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    .line 1331
    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    .line 1332
    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 1334
    .end local v0    # "safeInsets":Landroid/graphics/Insets;
    .end local v1    # "index":I
    :cond_1
    return-object p0
.end method

.method public whitelist setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 1
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroid/graphics/Insets;

    .line 1232
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1235
    return-object p0
.end method

.method public whitelist setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroid/graphics/Insets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1263
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1266
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1269
    return-object p0

    .line 1264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1195
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1196
    return-object p0
.end method

.method public whitelist setPrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/WindowInsets$Builder;
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1375
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const/4 v2, 0x3

    aput-object p1, v0, v2

    .line 1376
    .local v0, "boundsArr":[Landroid/graphics/Rect;
    new-instance v2, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v2, v0, v1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object v2, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1377
    return-object p0
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)Landroid/view/WindowInsets$Builder;
    .locals 0
    .param p1, "bounds"    # Landroid/view/PrivacyIndicatorBounds;

    .line 1363
    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1364
    return-object p0
.end method

.method public blacklist setRound(Z)Landroid/view/WindowInsets$Builder;
    .locals 0
    .param p1, "round"    # Z

    .line 1383
    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    .line 1384
    return-object p0
.end method

.method public whitelist setRoundedCorner(ILandroid/view/RoundedCorner;)Landroid/view/WindowInsets$Builder;
    .locals 1
    .param p1, "position"    # I
    .param p2, "roundedCorner"    # Landroid/view/RoundedCorner;

    .line 1356
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1, p2}, Landroid/view/RoundedCorners;->setRoundedCorner(ILandroid/view/RoundedCorner;)V

    .line 1357
    return-object p0
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;
    .locals 1
    .param p1, "roundedCorners"    # Landroid/view/RoundedCorners;

    .line 1340
    if-eqz p1, :cond_0

    .line 1341
    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    :goto_0
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1342
    return-object p0
.end method

.method public whitelist setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .param p1, "stableInsets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1311
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1314
    return-object p0
.end method

.method public whitelist setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1172
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1173
    return-object p0
.end method

.method public whitelist setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .param p1, "systemWindowInsets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1152
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 1154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1155
    return-object p0
.end method

.method public whitelist setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1212
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1213
    return-object p0
.end method

.method public whitelist setVisible(IZ)Landroid/view/WindowInsets$Builder;
    .locals 3
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z

    .line 1285
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 1286
    and-int v1, p1, v0

    if-nez v1, :cond_0

    .line 1287
    goto :goto_1

    .line 1289
    :cond_0
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aput-boolean p2, v1, v2

    .line 1285
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1291
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method
