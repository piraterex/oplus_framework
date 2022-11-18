.class final Landroid/widget/RemoteViews$AttributeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributeReflectionAction"
.end annotation


# static fields
.field static final blacklist COLOR_RESOURCE:I = 0x2

.field static final blacklist DIMEN_RESOURCE:I = 0x1

.field static final blacklist STRING_RESOURCE:I = 0x3


# instance fields
.field private final blacklist mAttrId:I

.field private final blacklist mResourceType:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "parameterType"    # I
    .param p5, "resourceType"    # I
    .param p6, "attrId"    # I

    .line 2092
    iput-object p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2093
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 2094
    iput p5, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 2095
    iput p6, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2096
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2098
    iput-object p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2099
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    .line 2100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 2101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2102
    return-void
.end method


# virtual methods
.method public blacklist getActionTag()I
    .locals 1

    .line 2173
    const/16 v0, 0x20

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2116
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2117
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2120
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    packed-switch v1, :pswitch_data_0

    .line 2159
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_4

    .line 2146
    :pswitch_0
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    packed-switch v1, :pswitch_data_1

    .line 2152
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_1

    .line 2148
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2148
    return-object v1

    .line 2150
    :pswitch_2
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2150
    return-object v1

    .line 2152
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2153
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2134
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_3
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2140
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_2

    .line 2138
    :sswitch_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_2
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2138
    return-object v1

    .line 2136
    :sswitch_1
    :try_start_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_3
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2136
    return-object v1

    .line 2140
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2141
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2122
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_4
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    packed-switch v1, :pswitch_data_2

    .line 2128
    :pswitch_5
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_3

    .line 2126
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_4
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2126
    return-object v1

    .line 2124
    :pswitch_7
    :try_start_5
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_5
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2124
    return-object v1

    .line 2128
    :goto_3
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimen attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2129
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or FLOAT, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2159
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_6
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2164
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    .line 2165
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_7
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v2

    .line 2162
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 2163
    .local v1, "ex":Landroid/widget/RemoteViews$ActionException;
    nop

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2167
    .end local v1    # "ex":Landroid/widget/RemoteViews$ActionException;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2168
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2106
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2107
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    return-void
.end method
