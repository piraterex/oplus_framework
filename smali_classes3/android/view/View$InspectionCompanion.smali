.class public final Landroid/view/View$InspectionCompanion;
.super Ljava/lang/Object;
.source "View$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAccessibilityFocusedId:I

.field private blacklist mAccessibilityHeadingId:I

.field private blacklist mAccessibilityLiveRegionId:I

.field private blacklist mAccessibilityPaneTitleId:I

.field private blacklist mAccessibilityTraversalAfterId:I

.field private blacklist mAccessibilityTraversalBeforeId:I

.field private blacklist mActivatedId:I

.field private blacklist mAlphaId:I

.field private blacklist mAutofillHintsId:I

.field private blacklist mBackgroundId:I

.field private blacklist mBackgroundTintId:I

.field private blacklist mBackgroundTintModeId:I

.field private blacklist mBaselineId:I

.field private blacklist mClickableId:I

.field private blacklist mContentDescriptionId:I

.field private blacklist mContextClickableId:I

.field private blacklist mDefaultFocusHighlightEnabledId:I

.field private blacklist mDrawingCacheQualityId:I

.field private blacklist mDuplicateParentStateId:I

.field private blacklist mElevationId:I

.field private blacklist mEnabledId:I

.field private blacklist mFadingEdgeLengthId:I

.field private blacklist mFilterTouchesWhenObscuredId:I

.field private blacklist mFitsSystemWindowsId:I

.field private blacklist mFocusableId:I

.field private blacklist mFocusableInTouchModeId:I

.field private blacklist mFocusedByDefaultId:I

.field private blacklist mFocusedId:I

.field private blacklist mForceDarkAllowedId:I

.field private blacklist mForegroundGravityId:I

.field private blacklist mForegroundId:I

.field private blacklist mForegroundTintId:I

.field private blacklist mForegroundTintModeId:I

.field private blacklist mHapticFeedbackEnabledId:I

.field private blacklist mIdId:I

.field private blacklist mImportantForAccessibilityId:I

.field private blacklist mImportantForAutofillId:I

.field private blacklist mImportantForContentCaptureId:I

.field private blacklist mIsScrollContainerId:I

.field private blacklist mKeepScreenOnId:I

.field private blacklist mKeyboardNavigationClusterId:I

.field private blacklist mLabelForId:I

.field private blacklist mLayerTypeId:I

.field private blacklist mLayoutDirectionId:I

.field private blacklist mLongClickableId:I

.field private blacklist mMinHeightId:I

.field private blacklist mMinWidthId:I

.field private blacklist mNestedScrollingEnabledId:I

.field private blacklist mNextClusterForwardId:I

.field private blacklist mNextFocusDownId:I

.field private blacklist mNextFocusForwardId:I

.field private blacklist mNextFocusLeftId:I

.field private blacklist mNextFocusRightId:I

.field private blacklist mNextFocusUpId:I

.field private blacklist mOutlineAmbientShadowColorId:I

.field private blacklist mOutlineProviderId:I

.field private blacklist mOutlineSpotShadowColorId:I

.field private blacklist mOverScrollModeId:I

.field private blacklist mPaddingBottomId:I

.field private blacklist mPaddingLeftId:I

.field private blacklist mPaddingRightId:I

.field private blacklist mPaddingTopId:I

.field private blacklist mPointerIconId:I

.field private blacklist mPressedId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mRawLayoutDirectionId:I

.field private blacklist mRawTextAlignmentId:I

.field private blacklist mRawTextDirectionId:I

.field private blacklist mRequiresFadingEdgeId:I

.field private blacklist mRotationId:I

.field private blacklist mRotationXId:I

.field private blacklist mRotationYId:I

.field private blacklist mSaveEnabledId:I

.field private blacklist mScaleXId:I

.field private blacklist mScaleYId:I

.field private blacklist mScreenReaderFocusableId:I

.field private blacklist mScrollIndicatorsId:I

.field private blacklist mScrollXId:I

.field private blacklist mScrollYId:I

.field private blacklist mScrollbarDefaultDelayBeforeFadeId:I

.field private blacklist mScrollbarFadeDurationId:I

.field private blacklist mScrollbarSizeId:I

.field private blacklist mScrollbarStyleId:I

.field private blacklist mSelectedId:I

.field private blacklist mSolidColorId:I

.field private blacklist mSoundEffectsEnabledId:I

.field private blacklist mStateListAnimatorId:I

.field private blacklist mTagId:I

.field private blacklist mTextAlignmentId:I

.field private blacklist mTextDirectionId:I

.field private blacklist mTooltipTextId:I

.field private blacklist mTransformPivotXId:I

.field private blacklist mTransformPivotYId:I

.field private blacklist mTransitionNameId:I

.field private blacklist mTranslationXId:I

.field private blacklist mTranslationYId:I

.field private blacklist mTranslationZId:I

.field private blacklist mVisibilityId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 26
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "accessibilityFocused"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityFocusedId:I

    .line 512
    const-string v2, "accessibilityHeading"

    const v4, 0x1010580

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityHeadingId:I

    .line 513
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 514
    .local v2, "accessibilityLiveRegionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v4, "none"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 515
    const/4 v5, 0x1

    const-string/jumbo v6, "polite"

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 516
    const/4 v6, 0x2

    const-string v7, "assertive"

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 517
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v8, "accessibilityLiveRegion"

    const v9, 0x10103ee

    invoke-interface {v1, v8, v9, v7}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityLiveRegionId:I

    .line 518
    const-string v7, "accessibilityPaneTitle"

    const v8, 0x101057c

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityPaneTitleId:I

    .line 519
    const-string v7, "accessibilityTraversalAfter"

    const v8, 0x10104d2

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalAfterId:I

    .line 520
    const-string v7, "accessibilityTraversalBefore"

    const v8, 0x10104d1

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalBeforeId:I

    .line 521
    const-string v7, "activated"

    invoke-interface {v1, v7, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mActivatedId:I

    .line 522
    const-string v7, "alpha"

    const v8, 0x101031f

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAlphaId:I

    .line 523
    const-string v7, "autofillHints"

    const v8, 0x1010556

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAutofillHintsId:I

    .line 524
    const-string v7, "background"

    const v8, 0x10100d4

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBackgroundId:I

    .line 525
    const-string v7, "backgroundTint"

    const v8, 0x101046b

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBackgroundTintId:I

    .line 526
    const-string v7, "backgroundTintMode"

    const v8, 0x101046c

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBackgroundTintModeId:I

    .line 527
    const-string v7, "baseline"

    const v8, 0x101031c

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBaselineId:I

    .line 528
    const-string v7, "clickable"

    const v8, 0x10100e5

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mClickableId:I

    .line 529
    const-string v7, "contentDescription"

    const v8, 0x1010273

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mContentDescriptionId:I

    .line 530
    const-string v7, "contextClickable"

    const v8, 0x10104e7

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mContextClickableId:I

    .line 531
    const-string v7, "defaultFocusHighlightEnabled"

    const v8, 0x1010562

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mDefaultFocusHighlightEnabledId:I

    .line 532
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 533
    .local v7, "drawingCacheQualityEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v8, "auto"

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    const/high16 v9, 0x80000

    const-string/jumbo v10, "low"

    invoke-virtual {v7, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 535
    const/high16 v9, 0x100000

    const-string/jumbo v10, "high"

    invoke-virtual {v7, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v10, "drawingCacheQuality"

    const v11, 0x10100e8

    invoke-interface {v1, v10, v11, v9}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mDrawingCacheQualityId:I

    .line 537
    const-string v9, "duplicateParentState"

    const v10, 0x10100e9

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mDuplicateParentStateId:I

    .line 538
    const-string v9, "elevation"

    const v10, 0x1010440

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mElevationId:I

    .line 539
    const-string v9, "enabled"

    const v10, 0x101000e

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mEnabledId:I

    .line 540
    const-string v9, "fadingEdgeLength"

    const v10, 0x10100e0

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mFadingEdgeLengthId:I

    .line 541
    const-string v9, "filterTouchesWhenObscured"

    const v10, 0x10102c4

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mFilterTouchesWhenObscuredId:I

    .line 542
    const-string v9, "fitsSystemWindows"

    const v10, 0x10100dd

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mFitsSystemWindowsId:I

    .line 543
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 544
    .local v9, "focusableEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v10, "false"

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    const-string/jumbo v10, "true"

    invoke-virtual {v9, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    const/16 v10, 0x10

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v11, v9}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v12, "focusable"

    const v13, 0x10100da

    invoke-interface {v1, v12, v13, v11}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusableId:I

    .line 548
    const-string v11, "focusableInTouchMode"

    const v12, 0x10100db

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusableInTouchModeId:I

    .line 549
    const-string v11, "focused"

    invoke-interface {v1, v11, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusedId:I

    .line 550
    const-string v11, "focusedByDefault"

    const v12, 0x1010544

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusedByDefaultId:I

    .line 551
    const-string v11, "forceDarkAllowed"

    const v12, 0x101058c

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForceDarkAllowedId:I

    .line 552
    const-string v11, "foreground"

    const v12, 0x1010109

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundId:I

    .line 553
    const-string v11, "foregroundGravity"

    const v12, 0x1010200

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundGravityId:I

    .line 554
    const-string v11, "foregroundTint"

    const v12, 0x101046d

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundTintId:I

    .line 555
    const-string v11, "foregroundTintMode"

    const v12, 0x101046e

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundTintModeId:I

    .line 556
    const-string/jumbo v11, "hapticFeedbackEnabled"

    const v12, 0x101025e

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mHapticFeedbackEnabledId:I

    .line 557
    const-string/jumbo v11, "id"

    const v12, 0x10100d0

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mIdId:I

    .line 558
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 559
    .local v11, "importantForAccessibilityEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v11, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 560
    const-string/jumbo v12, "yes"

    invoke-virtual {v11, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    const-string/jumbo v13, "no"

    invoke-virtual {v11, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 562
    const/4 v14, 0x4

    const-string/jumbo v15, "noHideDescendants"

    invoke-virtual {v11, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 563
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v15, v11}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v10, "importantForAccessibility"

    const v14, 0x10103aa

    invoke-interface {v1, v10, v14, v15}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v10

    iput v10, v0, Landroid/view/View$InspectionCompanion;->mImportantForAccessibilityId:I

    .line 564
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 565
    .local v10, "importantForAutofillEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v10, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    invoke-virtual {v10, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    invoke-virtual {v10, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    const-string/jumbo v14, "yesExcludeDescendants"

    const/4 v15, 0x4

    invoke-virtual {v10, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 569
    const/16 v15, 0x8

    const-string/jumbo v6, "noExcludeDescendants"

    invoke-virtual {v10, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v15, v10}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v5, "importantForAutofill"

    const v3, 0x1010558

    invoke-interface {v1, v5, v3, v15}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mImportantForAutofillId:I

    .line 571
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 572
    .local v3, "importantForContentCaptureEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    const/16 v5, 0x8

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v6, "importantForContentCapture"

    const v8, 0x1010607

    invoke-interface {v1, v6, v8, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mImportantForContentCaptureId:I

    .line 578
    const-string/jumbo v5, "isScrollContainer"

    const v6, 0x101024e

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mIsScrollContainerId:I

    .line 579
    const-string/jumbo v5, "keepScreenOn"

    const v6, 0x1010216

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mKeepScreenOnId:I

    .line 580
    const-string/jumbo v5, "keyboardNavigationCluster"

    const v6, 0x1010540

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mKeyboardNavigationClusterId:I

    .line 581
    const-string/jumbo v5, "labelFor"

    const v6, 0x10103c6

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mLabelForId:I

    .line 582
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 583
    .local v5, "layerTypeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    const-string/jumbo v6, "software"

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 585
    const-string/jumbo v6, "hardware"

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v8, "layerType"

    const v12, 0x1010354

    invoke-interface {v1, v8, v12, v6}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v6

    iput v6, v0, Landroid/view/View$InspectionCompanion;->mLayerTypeId:I

    .line 587
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 588
    .local v6, "layoutDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v8, "ltr"

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 589
    const-string/jumbo v12, "rtl"

    const/4 v13, 0x1

    invoke-virtual {v6, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v13, v6}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v14, "layoutDirection"

    const v15, 0x10103b2

    invoke-interface {v1, v14, v15, v13}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mLayoutDirectionId:I

    .line 591
    const-string/jumbo v13, "longClickable"

    const v14, 0x10100e6

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mLongClickableId:I

    .line 592
    const-string/jumbo v13, "minHeight"

    const v14, 0x1010140

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mMinHeightId:I

    .line 593
    const-string/jumbo v13, "minWidth"

    const v14, 0x101013f

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mMinWidthId:I

    .line 594
    const-string/jumbo v13, "nestedScrollingEnabled"

    const v14, 0x1010436

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNestedScrollingEnabledId:I

    .line 595
    const-string/jumbo v13, "nextClusterForward"

    const v14, 0x1010542

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextClusterForwardId:I

    .line 596
    const-string/jumbo v13, "nextFocusDown"

    const v14, 0x10100e4

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusDownId:I

    .line 597
    const-string/jumbo v13, "nextFocusForward"

    const v14, 0x101033c

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusForwardId:I

    .line 598
    const-string/jumbo v13, "nextFocusLeft"

    const v14, 0x10100e1

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusLeftId:I

    .line 599
    const-string/jumbo v13, "nextFocusRight"

    const v14, 0x10100e2

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusRightId:I

    .line 600
    const-string/jumbo v13, "nextFocusUp"

    const v14, 0x10100e3

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusUpId:I

    .line 601
    const-string/jumbo v13, "outlineAmbientShadowColor"

    const v14, 0x1010582

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mOutlineAmbientShadowColorId:I

    .line 602
    const-string/jumbo v13, "outlineProvider"

    const v14, 0x10104b8

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mOutlineProviderId:I

    .line 603
    const-string/jumbo v13, "outlineSpotShadowColor"

    const v14, 0x1010581

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mOutlineSpotShadowColorId:I

    .line 604
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 605
    .local v13, "overScrollModeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v14, "always"

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    const-string/jumbo v14, "ifContentScrolls"

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 607
    const-string/jumbo v14, "never"

    const/4 v15, 0x2

    invoke-virtual {v13, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v14, v13}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v15, "overScrollMode"

    move-object/from16 v16, v2

    .end local v2    # "accessibilityLiveRegionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v16, "accessibilityLiveRegionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v2, 0x10102c1

    invoke-interface {v1, v15, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mOverScrollModeId:I

    .line 609
    const-string/jumbo v2, "paddingBottom"

    const v14, 0x10100d9

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingBottomId:I

    .line 610
    const-string/jumbo v2, "paddingLeft"

    const v14, 0x10100d6

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingLeftId:I

    .line 611
    const-string/jumbo v2, "paddingRight"

    const v14, 0x10100d8

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingRightId:I

    .line 612
    const-string/jumbo v2, "paddingTop"

    const v14, 0x10100d7

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingTopId:I

    .line 613
    const-string/jumbo v2, "pointerIcon"

    const v14, 0x1010509

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPointerIconId:I

    .line 614
    const-string/jumbo v2, "pressed"

    const/4 v14, 0x0

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPressedId:I

    .line 615
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 616
    .local v2, "rawLayoutDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    const/4 v14, 0x1

    invoke-virtual {v2, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    const-string/jumbo v14, "inherit"

    const/4 v15, 0x2

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    const/4 v15, 0x3

    move-object/from16 v17, v3

    .end local v3    # "importantForContentCaptureEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v17, "importantForContentCaptureEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v3, "locale"

    invoke-virtual {v2, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v15, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v18, v2

    .end local v2    # "rawLayoutDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v18, "rawLayoutDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v2, "rawLayoutDirection"

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "layerTypeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v19, "layerTypeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v1, v2, v5, v15}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRawLayoutDirectionId:I

    .line 621
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 622
    .local v2, "rawTextAlignmentEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    const-string/jumbo v5, "gravity"

    const/4 v15, 0x1

    invoke-virtual {v2, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    const-string/jumbo v15, "textStart"

    move-object/from16 v20, v6

    const/4 v6, 0x2

    .end local v6    # "layoutDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v20, "layoutDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v6, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    const-string/jumbo v6, "textEnd"

    move-object/from16 v21, v7

    const/4 v7, 0x3

    .end local v7    # "drawingCacheQualityEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v21, "drawingCacheQualityEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    const-string v7, "center"

    move-object/from16 v22, v9

    const/4 v9, 0x4

    .end local v9    # "focusableEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v22, "focusableEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    const/4 v7, 0x5

    const-string/jumbo v9, "viewStart"

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    const/4 v9, 0x6

    const-string/jumbo v7, "viewEnd"

    invoke-virtual {v2, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v9, "rawTextAlignment"

    move-object/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "rawTextAlignmentEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v23, "rawTextAlignmentEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v1, v9, v2, v7}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRawTextAlignmentId:I

    .line 630
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 631
    .local v7, "rawTextDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v7, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    const-string v2, "firstStrong"

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    const-string v2, "anyRtl"

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    const/4 v2, 0x3

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    const/4 v2, 0x4

    invoke-virtual {v7, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 636
    const/4 v2, 0x5

    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    const-string v2, "firstStrongLtr"

    const/4 v9, 0x6

    invoke-virtual {v7, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    const/4 v2, 0x7

    const-string v9, "firstStrongRtl"

    invoke-virtual {v7, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v7}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v9, "rawTextDirection"

    const/4 v14, 0x0

    invoke-interface {v1, v9, v14, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRawTextDirectionId:I

    .line 640
    new-instance v2, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v2}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    .line 641
    .local v2, "requiresFadingEdgeFlagMapping":Landroid/view/inspector/IntFlagMapping;
    const/16 v9, 0x1000

    const/16 v14, 0x1000

    move-object/from16 v24, v7

    .end local v7    # "rawTextDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v24, "rawTextDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v7, "horizontal"

    invoke-virtual {v2, v9, v14, v7}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 642
    const/16 v7, 0x3000

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 643
    const/16 v7, 0x2000

    const/16 v9, 0x2000

    const-string/jumbo v14, "vertical"

    invoke-virtual {v2, v7, v9, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 644
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v7, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string/jumbo v9, "requiresFadingEdge"

    const v14, 0x10103a5

    invoke-interface {v1, v9, v14, v7}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRequiresFadingEdgeId:I

    .line 645
    const-string/jumbo v7, "rotation"

    const v9, 0x1010326

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRotationId:I

    .line 646
    const-string/jumbo v7, "rotationX"

    const v9, 0x1010327

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRotationXId:I

    .line 647
    const-string/jumbo v7, "rotationY"

    const v9, 0x1010328

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRotationYId:I

    .line 648
    const-string/jumbo v7, "saveEnabled"

    const v9, 0x10100e7

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mSaveEnabledId:I

    .line 649
    const-string/jumbo v7, "scaleX"

    const v9, 0x1010324

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mScaleXId:I

    .line 650
    const-string/jumbo v7, "scaleY"

    const v9, 0x1010325

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mScaleYId:I

    .line 651
    const-string/jumbo v7, "screenReaderFocusable"

    const v9, 0x1010574

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mScreenReaderFocusableId:I

    .line 652
    new-instance v7, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v7}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    .line 653
    .local v7, "scrollIndicatorsFlagMapping":Landroid/view/inspector/IntFlagMapping;
    const-string v9, "bottom"

    const/4 v14, 0x2

    invoke-virtual {v7, v14, v14, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 654
    const/16 v9, 0x20

    const/16 v14, 0x20

    move-object/from16 v25, v2

    .end local v2    # "requiresFadingEdgeFlagMapping":Landroid/view/inspector/IntFlagMapping;
    .local v25, "requiresFadingEdgeFlagMapping":Landroid/view/inspector/IntFlagMapping;
    const-string v2, "end"

    invoke-virtual {v7, v9, v14, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 655
    const-string/jumbo v2, "left"

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v9, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 656
    const/4 v2, -0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 657
    const-string/jumbo v2, "right"

    const/16 v4, 0x8

    invoke-virtual {v7, v4, v4, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 658
    const-string/jumbo v2, "start"

    const/16 v4, 0x10

    invoke-virtual {v7, v4, v4, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 659
    const-string/jumbo v2, "top"

    const/4 v4, 0x1

    invoke-virtual {v7, v4, v4, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    .line 660
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string/jumbo v4, "scrollIndicators"

    const v9, 0x10104e6

    invoke-interface {v1, v4, v9, v2}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollIndicatorsId:I

    .line 661
    const-string/jumbo v2, "scrollX"

    const v4, 0x10100d2

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollXId:I

    .line 662
    const-string/jumbo v2, "scrollY"

    const v4, 0x10100d3

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollYId:I

    .line 663
    const-string/jumbo v2, "scrollbarDefaultDelayBeforeFade"

    const v4, 0x10102a9

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarDefaultDelayBeforeFadeId:I

    .line 664
    const-string/jumbo v2, "scrollbarFadeDuration"

    const v4, 0x10102a8

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarFadeDurationId:I

    .line 665
    const-string/jumbo v2, "scrollbarSize"

    const v4, 0x1010063

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarSizeId:I

    .line 666
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 667
    .local v2, "scrollbarStyleEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v4, "insideOverlay"

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    const/high16 v4, 0x1000000

    const-string/jumbo v9, "insideInset"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 669
    const/high16 v4, 0x2000000

    const-string/jumbo v9, "outsideOverlay"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 670
    const/high16 v4, 0x3000000

    const-string/jumbo v9, "outsideInset"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v9, "scrollbarStyle"

    const v14, 0x101007f

    invoke-interface {v1, v9, v14, v4}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mScrollbarStyleId:I

    .line 672
    const-string/jumbo v4, "selected"

    const/4 v9, 0x0

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mSelectedId:I

    .line 673
    const-string/jumbo v4, "solidColor"

    const v9, 0x101034a

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mSolidColorId:I

    .line 674
    const-string/jumbo v4, "soundEffectsEnabled"

    const v9, 0x1010215

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mSoundEffectsEnabledId:I

    .line 675
    const-string/jumbo v4, "stateListAnimator"

    const v9, 0x1010448

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mStateListAnimatorId:I

    .line 676
    const-string/jumbo v4, "tag"

    const v9, 0x10100d1

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mTagId:I

    .line 677
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 678
    .local v4, "textAlignmentEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v9, 0x1

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 679
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 681
    const-string v5, "center"

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    const-string/jumbo v5, "viewStart"

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    const-string/jumbo v5, "viewEnd"

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 684
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v6, "textAlignment"

    const v9, 0x10103b1

    invoke-interface {v1, v6, v9, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mTextAlignmentId:I

    .line 685
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 686
    .local v5, "textDirectionEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v6, "firstStrong"

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    const-string v6, "anyRtl"

    const/4 v9, 0x2

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    const/4 v6, 0x3

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    const/4 v6, 0x4

    invoke-virtual {v5, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 690
    const/4 v6, 0x5

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    const-string v3, "firstStrongLtr"

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 692
    const/4 v3, 0x7

    const-string v6, "firstStrongRtl"

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v3, v5}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v6, "textDirection"

    const/4 v8, 0x0

    invoke-interface {v1, v6, v8, v3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTextDirectionId:I

    .line 694
    const-string/jumbo v3, "tooltipText"

    const v6, 0x1010534

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTooltipTextId:I

    .line 695
    const-string/jumbo v3, "transformPivotX"

    const v6, 0x1010320

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTransformPivotXId:I

    .line 696
    const-string/jumbo v3, "transformPivotY"

    const v6, 0x1010321

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTransformPivotYId:I

    .line 697
    const-string/jumbo v3, "transitionName"

    const v6, 0x1010400

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTransitionNameId:I

    .line 698
    const-string/jumbo v3, "translationX"

    const v6, 0x1010322

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTranslationXId:I

    .line 699
    const-string/jumbo v3, "translationY"

    const v6, 0x1010323

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTranslationYId:I

    .line 700
    const-string/jumbo v3, "translationZ"

    const v6, 0x10103fa

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTranslationZId:I

    .line 701
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 702
    .local v3, "visibilityEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v6, "visible"

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 703
    const-string/jumbo v6, "invisible"

    const/4 v8, 0x4

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 704
    const-string/jumbo v6, "gone"

    const/16 v8, 0x8

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v8, "visibility"

    const v9, 0x10100dc

    invoke-interface {v1, v8, v9, v6}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v6

    iput v6, v0, Landroid/view/View$InspectionCompanion;->mVisibilityId:I

    .line 706
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    .line 707
    return-void
.end method

.method public blacklist readProperties(Landroid/view/View;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1, "node"    # Landroid/view/View;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 711
    iget-boolean v0, p0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    .line 714
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityFocusedId:I

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 715
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityHeadingId:I

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 716
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityLiveRegionId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 717
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityPaneTitleId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 718
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalAfterId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityTraversalAfter()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 719
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalBeforeId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityTraversalBefore()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 720
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mActivatedId:I

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 721
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAlphaId:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 722
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAutofillHintsId:I

    invoke-virtual {p1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 723
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 724
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 725
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 726
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBaselineId:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 727
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 728
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mContentDescriptionId:I

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 729
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mContextClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isContextClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 730
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDefaultFocusHighlightEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->getDefaultFocusHighlightEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 731
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDrawingCacheQualityId:I

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheQuality()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 732
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDuplicateParentStateId:I

    invoke-virtual {p1}, Landroid/view/View;->isDuplicateParentStateEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 733
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mElevationId:I

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 734
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 735
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFadingEdgeLengthId:I

    invoke-virtual {p1}, Landroid/view/View;->getFadingEdgeLength()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 736
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFilterTouchesWhenObscuredId:I

    invoke-virtual {p1}, Landroid/view/View;->getFilterTouchesWhenObscured()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 737
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFitsSystemWindowsId:I

    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 738
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusableId:I

    invoke-virtual {p1}, Landroid/view/View;->getFocusable()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 739
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusableInTouchModeId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 740
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusedId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 741
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusedByDefaultId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 742
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForceDarkAllowedId:I

    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 743
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundId:I

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 744
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundGravityId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    .line 745
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundTintId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 746
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundTintModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 747
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mHapticFeedbackEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 748
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mIdId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 749
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForAccessibilityId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 750
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForAutofillId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAutofill()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 751
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForContentCaptureId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForContentCapture()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 752
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mIsScrollContainerId:I

    invoke-virtual {p1}, Landroid/view/View;->isScrollContainer()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 753
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mKeepScreenOnId:I

    invoke-virtual {p1}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 754
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mKeyboardNavigationClusterId:I

    invoke-virtual {p1}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 755
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLabelForId:I

    invoke-virtual {p1}, Landroid/view/View;->getLabelFor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 756
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLayerTypeId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 757
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLayoutDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 758
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLongClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 759
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mMinHeightId:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 760
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mMinWidthId:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 761
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNestedScrollingEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 762
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextClusterForwardId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 763
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusDownId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusDownId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 764
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusForwardId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 765
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusLeftId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusLeftId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 766
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusRightId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusRightId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 767
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusUpId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusUpId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 768
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineAmbientShadowColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineAmbientShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 769
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineProviderId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 770
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineSpotShadowColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineSpotShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 771
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOverScrollModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 772
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingBottomId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 773
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingLeftId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 774
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingRightId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 775
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingTopId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 776
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPointerIconId:I

    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 777
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPressedId:I

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 778
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawLayoutDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 779
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawTextAlignmentId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawTextAlignment()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 780
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawTextDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawTextDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 781
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRequiresFadingEdgeId:I

    invoke-virtual {p1}, Landroid/view/View;->getFadingEdge()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    .line 782
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 783
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationXId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 784
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationYId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 785
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSaveEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isSaveEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 786
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScaleXId:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 787
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScaleYId:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 788
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScreenReaderFocusableId:I

    invoke-virtual {p1}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 789
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollIndicatorsId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollIndicators()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    .line 790
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollXId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 791
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollYId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 792
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarDefaultDelayBeforeFadeId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 793
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarFadeDurationId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 794
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarSizeId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 795
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarStyleId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarStyle()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 796
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSelectedId:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 797
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSolidColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getSolidColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 798
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSoundEffectsEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 799
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mStateListAnimatorId:I

    invoke-virtual {p1}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 800
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTagId:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 801
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTextAlignmentId:I

    invoke-virtual {p1}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 802
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTextDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 803
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTooltipTextId:I

    invoke-virtual {p1}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 804
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransformPivotXId:I

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 805
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransformPivotYId:I

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 806
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransitionNameId:I

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 807
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationXId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 808
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationYId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 809
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationZId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 810
    iget v0, p0, Landroid/view/View$InspectionCompanion;->mVisibilityId:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 811
    return-void

    .line 712
    :cond_0
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0

    .line 18
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$InspectionCompanion;->readProperties(Landroid/view/View;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
