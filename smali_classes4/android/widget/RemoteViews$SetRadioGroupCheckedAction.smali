.class Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRadioGroupCheckedAction"
.end annotation


# instance fields
.field private final blacklist mCheckedId:I


# direct methods
.method constructor blacklist <init>(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "checkedId"    # I

    .line 3390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3391
    iput p1, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    .line 3392
    iput p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 3393
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    .line 3397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 3398
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3409
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3410
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 3412
    :cond_0
    instance-of v1, v0, Landroid/widget/RadioGroup;

    if-nez v1, :cond_1

    .line 3413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it\'s not a RadioGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    return-void

    .line 3417
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/RadioGroup;

    .line 3420
    .local v1, "group":Landroid/widget/RadioGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    const v4, 0x1020459

    if-ge v2, v3, :cond_4

    .line 3421
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3422
    .local v3, "child":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CompoundButton;

    if-nez v5, :cond_2

    goto :goto_1

    .line 3424
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 3425
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v5, :cond_3

    goto :goto_1

    .line 3428
    :cond_3
    move-object v5, v3

    check-cast v5, Landroid/widget/CompoundButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3420
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3431
    .end local v2    # "i":I
    :cond_4
    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 3434
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 3435
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3436
    .restart local v3    # "child":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CompoundButton;

    if-nez v5, :cond_5

    goto :goto_3

    .line 3438
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 3439
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v6, :cond_6

    goto :goto_3

    .line 3441
    :cond_6
    move-object v6, v3

    check-cast v6, Landroid/widget/CompoundButton;

    move-object v7, v5

    check-cast v7, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3434
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "tag":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3443
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 3447
    const/16 v0, 0x1b

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3402
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3403
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3404
    return-void
.end method
