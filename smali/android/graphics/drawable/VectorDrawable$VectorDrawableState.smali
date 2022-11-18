.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VectorDrawableState"
.end annotation


# static fields
.field static final greylist-max-o ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x13c


# instance fields
.field private greylist-max-o mAllocationOfAllNodes:I

.field greylist-max-o mAutoMirrored:Z

.field greylist-max-o mBaseHeight:I

.field greylist-max-o mBaseWidth:I

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mCacheDirty:Z

.field greylist-max-o mCachedAutoMirrored:Z

.field blacklist mCachedBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mCachedThemeAttrs:[I

.field greylist-max-o mCachedTint:Landroid/content/res/ColorStateList;

.field greylist-max-o mChangingConfigurations:I

.field greylist-max-o mDensity:I

.field greylist-max-o mLastHWCachePixelCount:I

.field greylist-max-o mLastSWCachePixelCount:I

.field greylist-max-o mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

.field greylist-max-o mOpticalInsets:Landroid/graphics/Insets;

.field greylist-max-o mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field greylist-max-o mRootName:Ljava/lang/String;

.field greylist-max-o mThemeAttrs:[I

.field greylist-max-o mTint:Landroid/content/res/ColorStateList;

.field final greylist-max-o mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mViewportHeight:F

.field greylist-max-o mViewportWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcreateNativeTree(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 974
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 1001
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 947
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 950
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 951
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 952
    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 953
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 954
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 955
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 957
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 959
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 960
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    .line 971
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    .line 972
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    .line 995
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    .line 1004
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 1005
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 1006
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1007
    iget-boolean v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 1008
    new-instance v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1009
    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 1011
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 1012
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 1013
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    iget v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    .line 1014
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1016
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 1017
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 1018
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1019
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1022
    :cond_0
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1023
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 1025
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    .line 1026
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .locals 5
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 1135
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 1136
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 1139
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    .line 1141
    .local v0, "insetLeft":I
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    .line 1143
    .local v2, "insetTop":I
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v3, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    .line 1145
    .local v3, "insetRight":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    .line 1147
    .local v1, "insetBottom":I
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1148
    return-void
.end method

.method private greylist-max-o createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 3
    .param p1, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1029
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$fgetmNativePtr(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateTree(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1031
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1032
    return-void
.end method

.method private greylist-max-o createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 5
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "rootGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1037
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1038
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    invoke-static {p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$fgetmNativePtr(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v3

    .line 1037
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateTreeFromCopy(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1040
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1041
    return-void
.end method


# virtual methods
.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1081
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1082
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 1088
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1089
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1086
    :goto_1
    return v0
.end method

.method public greylist-max-o canReuseCache()Z
    .locals 2

    .line 1059
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBlendMode:Landroid/graphics/BlendMode;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    .line 1064
    const/4 v0, 0x1

    return v0

    .line 1066
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCacheStates()V

    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1157
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 1158
    .local v0, "bitmapCacheSize":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    add-int/lit16 v2, v2, 0x13c

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1160
    return-void
.end method

.method public greylist-max-o getAlpha()F
    .locals 2

    .line 1172
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetRootAlpha(J)F

    move-result v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 1104
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 1105
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 1104
    return v0
.end method

.method greylist-max-o getNativeRenderer()J
    .locals 2

    .line 1052
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_0

    .line 1053
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1055
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 988
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    return-object v0

    .line 991
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .locals 1

    .line 1114
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_2

    .line 1115
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1114
    :goto_0
    return v0
.end method

.method public greylist-max-o isStateful()Z
    .locals 1

    .line 1109
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_2

    .line 1110
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1109
    :goto_0
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1094
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1099
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable-IA;)V

    return-object v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 1151
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o onTreeConstructionFinished()V
    .locals 2

    .line 1046
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1047
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    .line 1048
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1049
    return-void
.end method

.method public greylist-max-o setAlpha(F)Z
    .locals 2
    .param p1, "alpha"    # F

    .line 1167
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetRootAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o setDensity(I)Z
    .locals 2
    .param p1, "targetDensity"    # I

    .line 1125
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    if-eq v0, p1, :cond_0

    .line 1126
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 1127
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 1128
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyDensityScaling(II)V

    .line 1129
    const/4 v1, 0x1

    return v1

    .line 1131
    .end local v0    # "sourceDensity":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o setViewportSize(FF)V
    .locals 2
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F

    .line 1119
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 1120
    iput p2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 1121
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetRendererViewportSize(JFF)V

    .line 1122
    return-void
.end method

.method public greylist-max-o updateCacheStates()V
    .locals 1

    .line 1073
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    .line 1074
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    .line 1075
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBlendMode:Landroid/graphics/BlendMode;

    .line 1076
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 1078
    return-void
.end method
