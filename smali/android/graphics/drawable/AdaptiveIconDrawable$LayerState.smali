.class Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# static fields
.field static final greylist-max-o N_CHILDREN:I = 0x3


# instance fields
.field private greylist-max-o mAutoMirrored:Z

.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mCheckedOpacity:Z

.field private greylist-max-o mCheckedStateful:Z

.field greylist-max-o mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

.field greylist-max-o mChildrenChangingConfigurations:I

.field greylist-max-o mDensity:I

.field private greylist-max-o mIsStateful:Z

.field private greylist-max-o mOpacity:I

.field greylist-max-o mOpacityOverride:I

.field blacklist mSourceDrawableId:I

.field greylist-max-o mSrcDensityOverride:I

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 1031
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1014
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 1016
    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 1021
    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 1028
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    .line 1032
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    :cond_0
    invoke-static {p3, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    .line 1033
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1034
    if-eqz p1, :cond_2

    .line 1035
    iget-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1037
    .local v1, "origChildDrawable":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    .line 1038
    iget v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 1039
    iget v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 1041
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1042
    aget-object v3, v1, v2

    .line 1043
    .local v3, "or":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v2

    .line 1041
    .end local v3    # "or":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1046
    .end local v2    # "i":I
    :cond_1
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1047
    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    .line 1048
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1049
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    .line 1050
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    .line 1051
    iget-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    .line 1052
    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 1053
    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 1054
    .end local v1    # "origChildDrawable":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    goto :goto_2

    .line 1055
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1056
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    aput-object v3, v2, v1

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1059
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .locals 5

    .line 1069
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1073
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1074
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 1075
    aget-object v3, v0, v2

    .line 1076
    .local v3, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1077
    return v1

    .line 1074
    .end local v3    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1080
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1070
    .end local v0    # "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    :cond_3
    :goto_1
    return v1
.end method

.method public final greylist-max-o canConstantState()Z
    .locals 4

    .line 1167
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1168
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 1169
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1170
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1171
    const/4 v3, 0x0

    return v3

    .line 1168
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1176
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 1095
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final greylist-max-o getOpacity()I
    .locals 7

    .line 1100
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_0

    .line 1101
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    return v0

    .line 1104
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1107
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, -0x1

    .line 1108
    .local v1, "firstIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 1109
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 1110
    move v1, v2

    .line 1111
    goto :goto_1

    .line 1108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1116
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    .line 1117
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .local v2, "op":I
    goto :goto_2

    .line 1119
    .end local v2    # "op":I
    :cond_3
    const/4 v2, -0x2

    .line 1123
    .restart local v2    # "op":I
    :goto_2
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_5

    .line 1124
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1125
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 1126
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v2, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    .line 1123
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1130
    .end local v4    # "i":I
    :cond_5
    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    .line 1131
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1132
    return v2
.end method

.method public final greylist-max-o hasFocusStateSpecified()Z
    .locals 4

    .line 1156
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1157
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 1158
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1159
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1160
    const/4 v3, 0x1

    return v3

    .line 1157
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1163
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o invalidateCache()V
    .locals 1

    .line 1180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1181
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1182
    return-void
.end method

.method public final greylist-max-o isStateful()Z
    .locals 5

    .line 1136
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_0

    .line 1137
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    return v0

    .line 1140
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1141
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .line 1142
    .local v1, "isStateful":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 1143
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1144
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1145
    const/4 v1, 0x1

    .line 1146
    goto :goto_1

    .line 1142
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1150
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    .line 1151
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1152
    return v1
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1085
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1090
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final greylist-max-o setDensity(I)V
    .locals 1
    .param p1, "targetDensity"    # I

    .line 1062
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_0

    .line 1063
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    .line 1065
    :cond_0
    return-void
.end method
