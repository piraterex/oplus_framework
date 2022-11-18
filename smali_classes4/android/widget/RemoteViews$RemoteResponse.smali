.class public Landroid/widget/RemoteViews$RemoteResponse;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteResponse$InteractionType;
    }
.end annotation


# static fields
.field public static final blacklist INTERACTION_TYPE_CHECKED_CHANGE:I = 0x1

.field public static final blacklist INTERACTION_TYPE_CLICK:I


# instance fields
.field private blacklist mElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFillIntent:Landroid/content/Intent;

.field private blacklist mInteractionType:I

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mViewIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 6465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6482
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    return-void
.end method

.method public static whitelist fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 1
    .param p0, "fillIntent"    # Landroid/content/Intent;

    .line 6527
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 6528
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 6529
    return-object v0
.end method

.method public static whitelist fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 6497
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 6498
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 6499
    return-object v0
.end method

.method private static blacklist getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .line 6626
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6628
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 6635
    .local v1, "parent":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/widget/AdapterView;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v2, :cond_2

    .line 6638
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 6641
    :cond_2
    instance-of v2, v1, Landroid/widget/AdapterView;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    :cond_3
    return-object v0
.end method

.method private blacklist handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 6594
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 6595
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .local v0, "pi":Landroid/app/PendingIntent;
    goto :goto_0

    .line 6596
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_3

    .line 6597
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteResponse;->getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;

    move-result-object v0

    .line 6598
    .local v0, "ancestor":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez v0, :cond_1

    .line 6599
    const-string v2, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6600
    return-void

    .line 6604
    :cond_1
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    .line 6605
    const-string v2, "Attempting setOnClickFillInIntent or setOnCheckedChangeFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6608
    return-void

    .line 6611
    :cond_2
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    .line 6612
    .local v0, "pi":Landroid/app/PendingIntent;
    nop

    .line 6617
    :goto_0
    invoke-interface {p2, p1, v0, p0}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    .line 6618
    return-void

    .line 6613
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_3
    const-string v0, "Response has neither pendingIntent nor fillInIntent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6614
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6580
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 6581
    if-nez v0, :cond_0

    .line 6582
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 6584
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 6585
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 6586
    .local v0, "viewIds":[I
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 6587
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 6588
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6569
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 6570
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 6572
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6574
    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6575
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6576
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6577
    return-void
.end method


# virtual methods
.method public whitelist addSharedElement(ILjava/lang/String;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 6545
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_0

    .line 6546
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 6547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 6549
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 6550
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6551
    return-object p0
.end method

.method public blacklist getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;"
        }
    .end annotation

    .line 6646
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6647
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 6649
    instance-of v1, p1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6651
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "android.widget.extra.CHECKED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6654
    :cond_1
    const/4 v1, 0x0

    .line 6656
    .local v1, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6657
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111018d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const/high16 v4, 0x10000000

    if-eqz v3, :cond_2

    .line 6659
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 6661
    .local v3, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 6663
    .local v5, "windowAnimations":I
    sget-object v7, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 6665
    .local v7, "windowAnimationStyle":Landroid/content/res/TypedArray;
    const/16 v8, 0x1a

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 6667
    .local v8, "enterAnimationId":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 6668
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 6670
    if-eqz v8, :cond_2

    .line 6671
    invoke-static {v2, v8, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 6673
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 6677
    .end local v3    # "windowStyle":Landroid/content/res/TypedArray;
    .end local v5    # "windowAnimations":I
    .end local v7    # "windowAnimationStyle":Landroid/content/res/TypedArray;
    .end local v8    # "enterAnimationId":I
    :cond_2
    if-nez v1, :cond_4

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 6678
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6679
    .local v3, "parent":Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_3

    instance-of v5, v3, Landroid/appwidget/AppWidgetHostView;

    if-nez v5, :cond_3

    .line 6680
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/view/View;

    goto :goto_1

    .line 6682
    :cond_3
    instance-of v5, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_4

    .line 6683
    move-object v5, v3

    check-cast v5, Landroid/appwidget/AppWidgetHostView;

    iget-object v6, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 6684
    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 6685
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 6683
    invoke-virtual {v5, v6, v7, v0}, Landroid/appwidget/AppWidgetHostView;->createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 6689
    .end local v3    # "parent":Landroid/view/View;
    :cond_4
    if-nez v1, :cond_5

    .line 6690
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 6691
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 6693
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 6694
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_2

    .line 6697
    :cond_6
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "RemoteViews"

    const-string v5, "getLaunchOptions: view.getDisplay() is null!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6700
    :goto_2
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public blacklist setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 0
    .param p1, "type"    # I

    .line 6564
    iput p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 6565
    return-object p0
.end method
