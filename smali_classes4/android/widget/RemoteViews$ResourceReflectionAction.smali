.class final Landroid/widget/RemoteViews$ResourceReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResourceReflectionAction"
.end annotation


# static fields
.field static final blacklist COLOR_RESOURCE:I = 0x2

.field static final blacklist DIMEN_RESOURCE:I = 0x1

.field static final blacklist STRING_RESOURCE:I = 0x3


# instance fields
.field private final blacklist mResId:I

.field private final blacklist mResourceType:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "parameterType"    # I
    .param p5, "resourceType"    # I
    .param p6, "resId"    # I

    .line 2005
    iput-object p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2006
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 2007
    iput p5, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 2008
    iput p6, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 2009
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2011
    iput-object p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2012
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    .line 2013
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 2014
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 2015
    return-void
.end method


# virtual methods
.method public blacklist getActionTag()I
    .locals 1

    .line 2078
    const/16 v0, 0x18

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

    .line 2027
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2029
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2031
    .local v1, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2067
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_e

    .line 2056
    :pswitch_0
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    packed-switch v2, :pswitch_data_1

    .line 2062
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_4

    .line 2058
    :pswitch_1
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v0

    .line 2060
    :pswitch_2
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_2

    :goto_2
    goto :goto_3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    return-object v0

    .line 2062
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string resources must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 2044
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_3
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 2051
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_9

    .line 2048
    :sswitch_0
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_3

    .line 2049
    :goto_5
    goto :goto_6

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_5

    .line 2048
    :goto_6
    return-object v0

    .line 2046
    :sswitch_1
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_4

    :goto_7
    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_7

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2051
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color resources must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 2033
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_4
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    packed-switch v0, :pswitch_data_2

    .line 2039
    :pswitch_5
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_d

    .line 2037
    :pswitch_6
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_a
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2035
    :pswitch_7
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_6

    :goto_b
    goto :goto_c

    :cond_6
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_b

    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2039
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimen resources must be used as INT or FLOAT, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 2067
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2071
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    .line 2072
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2069
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 2070
    .local v0, "ex":Landroid/widget/RemoteViews$ActionException;
    throw v0

    nop

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

    .line 2019
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2020
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2022
    return-void
.end method
