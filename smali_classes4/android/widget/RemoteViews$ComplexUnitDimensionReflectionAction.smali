.class final Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComplexUnitDimensionReflectionAction"
.end annotation


# instance fields
.field private final blacklist mUnit:I

.field private final blacklist mValue:F

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;IFI)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "parameterType"    # I
    .param p5, "value"    # F
    .param p6, "unit"    # I

    .line 2183
    iput-object p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2184
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 2185
    iput p5, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    .line 2186
    iput p6, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    .line 2187
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2189
    iput-object p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2190
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    .line 2191
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    .line 2192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    .line 2193
    return-void
.end method


# virtual methods
.method public blacklist getActionTag()I
    .locals 1

    .line 2228
    const/16 v0, 0x19

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2205
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2207
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2209
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    iget v1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    iget v2, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    .line 2210
    .local v1, "data":I
    iget v2, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->type:I

    packed-switch v2, :pswitch_data_0

    .line 2216
    :pswitch_0
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    goto :goto_0

    .line 2214
    :pswitch_1
    invoke-static {v1, v0}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 2212
    :pswitch_2
    invoke-static {v1, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 2216
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parameter type must be INT or FLOAT, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local p0    # "this":Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v2
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
    .end local v1    # "data":I
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    .line 2222
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2219
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 2220
    .local v1, "ex":Landroid/widget/RemoteViews$ActionException;
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2197
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2198
    iget v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2199
    iget v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    return-void
.end method
