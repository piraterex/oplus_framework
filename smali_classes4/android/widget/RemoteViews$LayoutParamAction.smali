.class Landroid/widget/RemoteViews$LayoutParamAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParamAction"
.end annotation


# static fields
.field static final blacklist LAYOUT_HEIGHT:I = 0x9

.field static final blacklist LAYOUT_MARGIN_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_MARGIN_END:I = 0x5

.field static final blacklist LAYOUT_MARGIN_LEFT:I = 0x0

.field static final blacklist LAYOUT_MARGIN_RIGHT:I = 0x2

.field static final blacklist LAYOUT_MARGIN_START:I = 0x4

.field static final blacklist LAYOUT_MARGIN_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_WIDTH:I = 0x8


# instance fields
.field final greylist-max-o mProperty:I

.field final greylist-max-o mValue:I

.field final blacklist mValueType:I


# direct methods
.method constructor blacklist <init>(IIFI)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # F
    .param p4, "units"    # I

    .line 3050
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3051
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 3052
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 3053
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 3054
    invoke-static {p3, p4}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3055
    return-void
.end method

.method constructor blacklist <init>(IIII)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I
    .param p4, "valueType"    # I

    .line 3065
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3066
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 3067
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 3068
    iput p4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 3069
    iput p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3070
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 3072
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 3074
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 3075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 3076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3077
    return-void
.end method

.method private blacklist getPixelOffset(Landroid/view/View;)I
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .line 3149
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3167
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_0

    .line 3151
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3154
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_1
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3156
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3154
    return v1

    .line 3156
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3157
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .end local p1    # "target":Landroid/view/View;
    throw v1

    .line 3159
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .restart local p1    # "target":Landroid/view/View;
    :pswitch_1
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_0

    .line 3160
    return v1

    .line 3162
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    .line 3164
    :pswitch_2
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3165
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3164
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 3167
    :goto_0
    return v0

    .line 3169
    :catchall_1
    move-exception v0

    .line 3170
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getPixelSize(Landroid/view/View;)I
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .line 3176
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3194
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_0

    .line 3178
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3181
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_1
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3183
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3181
    return v1

    .line 3183
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3184
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .end local p1    # "target":Landroid/view/View;
    throw v1

    .line 3186
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .restart local p1    # "target":Landroid/view/View;
    :pswitch_1
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_0

    .line 3187
    return v1

    .line 3189
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 3191
    :pswitch_2
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3192
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3191
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 3194
    :goto_0
    return v0

    .line 3196
    :catchall_1
    move-exception v0

    .line 3197
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3089
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3090
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    .line 3091
    return-void

    .line 3093
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3094
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 3095
    return-void

    .line 3097
    :cond_1
    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    packed-switch v2, :pswitch_data_0

    .line 3143
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3139
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3140
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3141
    goto/16 :goto_0

    .line 3135
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3136
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3137
    goto :goto_0

    .line 3129
    :pswitch_3
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 3130
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 3131
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3123
    :pswitch_4
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 3124
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 3125
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3117
    :pswitch_5
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 3118
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3119
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3111
    :pswitch_6
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 3112
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3113
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3105
    :pswitch_7
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 3106
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3107
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3099
    :pswitch_8
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 3100
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3101
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3145
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 3203
    const/16 v0, 0x13

    return v0
.end method

.method public greylist-max-o getUniqueKey()Ljava/lang/String;
    .locals 2

    .line 3208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3080
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3081
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3082
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3083
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3084
    return-void
.end method
