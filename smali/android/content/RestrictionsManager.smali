.class public Landroid/content/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final whitelist ACTION_PERMISSION_RESPONSE_RECEIVED:Ljava/lang/String; = "android.content.action.PERMISSION_RESPONSE_RECEIVED"

.field public static final whitelist ACTION_REQUEST_LOCAL_APPROVAL:Ljava/lang/String; = "android.content.action.REQUEST_LOCAL_APPROVAL"

.field public static final whitelist ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "android.content.action.REQUEST_PERMISSION"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_REQUEST_BUNDLE:Ljava/lang/String; = "android.content.extra.REQUEST_BUNDLE"

.field public static final whitelist EXTRA_REQUEST_ID:Ljava/lang/String; = "android.content.extra.REQUEST_ID"

.field public static final whitelist EXTRA_REQUEST_TYPE:Ljava/lang/String; = "android.content.extra.REQUEST_TYPE"

.field public static final whitelist EXTRA_RESPONSE_BUNDLE:Ljava/lang/String; = "android.content.extra.RESPONSE_BUNDLE"

.field public static final whitelist META_DATA_APP_RESTRICTIONS:Ljava/lang/String; = "android.content.APP_RESTRICTIONS"

.field public static final whitelist REQUEST_KEY_APPROVE_LABEL:Ljava/lang/String; = "android.request.approve_label"

.field public static final whitelist REQUEST_KEY_DATA:Ljava/lang/String; = "android.request.data"

.field public static final whitelist REQUEST_KEY_DENY_LABEL:Ljava/lang/String; = "android.request.deny_label"

.field public static final whitelist REQUEST_KEY_ICON:Ljava/lang/String; = "android.request.icon"

.field public static final whitelist REQUEST_KEY_ID:Ljava/lang/String; = "android.request.id"

.field public static final whitelist REQUEST_KEY_MESSAGE:Ljava/lang/String; = "android.request.mesg"

.field public static final whitelist REQUEST_KEY_NEW_REQUEST:Ljava/lang/String; = "android.request.new_request"

.field public static final whitelist REQUEST_KEY_TITLE:Ljava/lang/String; = "android.request.title"

.field public static final whitelist REQUEST_TYPE_APPROVAL:Ljava/lang/String; = "android.request.type.approval"

.field public static final whitelist RESPONSE_KEY_ERROR_CODE:Ljava/lang/String; = "android.response.errorcode"

.field public static final whitelist RESPONSE_KEY_MESSAGE:Ljava/lang/String; = "android.response.msg"

.field public static final whitelist RESPONSE_KEY_RESPONSE_TIMESTAMP:Ljava/lang/String; = "android.response.timestamp"

.field public static final whitelist RESPONSE_KEY_RESULT:Ljava/lang/String; = "android.response.result"

.field public static final whitelist RESULT_APPROVED:I = 0x1

.field public static final whitelist RESULT_DENIED:I = 0x2

.field public static final whitelist RESULT_ERROR:I = 0x5

.field public static final whitelist RESULT_ERROR_BAD_REQUEST:I = 0x1

.field public static final whitelist RESULT_ERROR_INTERNAL:I = 0x3

.field public static final whitelist RESULT_ERROR_NETWORK:I = 0x2

.field public static final whitelist RESULT_NO_RESPONSE:I = 0x3

.field public static final whitelist RESULT_UNKNOWN_REQUEST:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RestrictionsManager"

.field private static final greylist-max-o TAG_RESTRICTION:Ljava/lang/String; = "restriction"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-p mService:Landroid/content/IRestrictionsManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/IRestrictionsManager;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 415
    iput-object p2, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    .line 416
    return-void
.end method

.method private static greylist-max-o addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;

    .line 705
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported restrictionEntry type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 746
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 728
    .local v0, "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    array-length v1, v0

    new-array v1, v1, [Landroid/os/Bundle;

    .line 729
    .local v1, "bundleArray":[Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 730
    aget-object v3, v0, v2

    .line 731
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v3

    .line 732
    .local v3, "bundleRestrictions":[Landroid/content/RestrictionEntry;
    if-nez v3, :cond_0

    .line 734
    const-string v4, "RestrictionsManager"

    const-string v5, "addRestrictionToBundle: Non-bundle entry found in bundle array"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v1, v2

    goto :goto_1

    .line 738
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v1, v2

    .line 729
    .end local v3    # "bundleRestrictions":[Landroid/content/RestrictionEntry;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 743
    goto :goto_2

    .line 722
    .end local v0    # "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    .end local v1    # "bundleArray":[Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 723
    .local v0, "restrictions":[Landroid/content/RestrictionEntry;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    .line 724
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 725
    goto :goto_2

    .line 715
    .end local v0    # "restrictions":[Landroid/content/RestrictionEntry;
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    goto :goto_2

    .line 712
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 713
    goto :goto_2

    .line 707
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 708
    goto :goto_2

    .line 719
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    nop

    .line 748
    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 697
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 698
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    .line 699
    .local v2, "entry":Landroid/content/RestrictionEntry;
    invoke-static {v0, v2}, Landroid/content/RestrictionsManager;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    .line 700
    .end local v2    # "entry":Landroid/content/RestrictionEntry;
    goto :goto_0

    .line 701
    :cond_0
    return-object v0
.end method

.method private greylist-max-o loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 560
    const-string v0, "Reading restriction metadata for "

    const-string v1, "RestrictionsManager"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 563
    .local v3, "appContext":Landroid/content/Context;
    nop

    .line 564
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v4, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .line 569
    .local v5, "tagType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 570
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 571
    invoke-direct {p0, v3, p2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v6

    .line 572
    .local v6, "restriction":Landroid/content/RestrictionEntry;
    if-eqz v6, :cond_0

    .line 573
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v6    # "restriction":Landroid/content/RestrictionEntry;
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v6

    goto :goto_0

    .line 584
    .end local v5    # "tagType":I
    :cond_1
    nop

    .line 586
    return-object v4

    .line 581
    :catch_0
    move-exception v5

    .line 582
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    return-object v2

    .line 578
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 579
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    return-object v2

    .line 561
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v4    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 562
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v2
.end method

.method private greylist-max-o loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 16
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 604
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 607
    .local v4, "restrictionType":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, "title":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 609
    .local v8, "description":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 610
    .local v9, "entries":I
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 612
    .local v10, "entryValues":I
    const/4 v11, 0x0

    const-string v12, "RestrictionsManager"

    if-ne v4, v5, :cond_0

    .line 613
    const-string/jumbo v5, "restrictionType cannot be omitted"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v11

    .line 617
    :cond_0
    if-nez v3, :cond_1

    .line 618
    const-string v5, "key cannot be omitted"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v11

    .line 622
    :cond_1
    new-instance v5, Landroid/content/RestrictionEntry;

    invoke-direct {v5, v4, v3}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .line 623
    .local v5, "restriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v5, v6}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v5, v8}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 625
    if-eqz v9, :cond_2

    .line 626
    invoke-virtual {v5, v0, v9}, Landroid/content/RestrictionEntry;->setChoiceEntries(Landroid/content/Context;I)V

    .line 628
    :cond_2
    if-eqz v10, :cond_3

    .line 629
    invoke-virtual {v5, v0, v10}, Landroid/content/RestrictionEntry;->setChoiceValues(Landroid/content/Context;I)V

    .line 632
    :cond_3
    const/4 v11, 0x4

    packed-switch v4, :pswitch_data_0

    .line 675
    :pswitch_0
    move-object/from16 v13, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown restriction type "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 656
    :pswitch_1
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 657
    .local v7, "outerDepth":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v11, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :goto_0
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 659
    move-object/from16 v13, p0

    invoke-direct {v13, v0, v2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v14

    .line 660
    .local v14, "childEntry":Landroid/content/RestrictionEntry;
    if-nez v14, :cond_4

    .line 661
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Child entry cannot be loaded for bundle restriction "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 663
    :cond_4
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const/16 v0, 0x8

    if-ne v4, v0, :cond_5

    .line 665
    invoke-virtual {v14}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    const/4 v15, 0x7

    if-eq v0, v15, :cond_5

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bundle_array "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " can only contain entries of type bundle"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v14    # "childEntry":Landroid/content/RestrictionEntry;
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    goto :goto_0

    .line 671
    :cond_6
    move-object/from16 v13, p0

    .line 672
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/RestrictionEntry;

    .line 671
    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/RestrictionEntry;

    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    .line 673
    goto :goto_2

    .line 640
    .end local v7    # "outerDepth":I
    .end local v11    # "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :pswitch_2
    move-object/from16 v13, p0

    .line 641
    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 640
    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    .line 642
    goto :goto_2

    .line 644
    :pswitch_3
    move-object/from16 v13, p0

    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 645
    .local v0, "resId":I
    if-eqz v0, :cond_7

    .line 646
    nop

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 646
    invoke-virtual {v5, v7}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_2

    .line 651
    .end local v0    # "resId":I
    :pswitch_4
    move-object/from16 v13, p0

    .line 652
    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 651
    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 653
    goto :goto_2

    .line 636
    :pswitch_5
    move-object/from16 v13, p0

    .line 637
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 638
    nop

    .line 677
    :cond_7
    :goto_2
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 591
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "restriction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 593
    .local v0, "attrSet":Landroid/util/AttributeSet;
    if-eqz v0, :cond_0

    .line 594
    sget-object v1, Lcom/android/internal/R$styleable;->RestrictionEntry:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 596
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v1, p2}, Landroid/content/RestrictionsManager;->loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v2

    return-object v2

    .line 599
    .end local v0    # "attrSet":Landroid/util/AttributeSet;
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist createLocalApprovalIntent()Landroid/content/Intent;
    .locals 2

    .line 491
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v0}, Landroid/content/IRestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 496
    :cond_0
    nop

    .line 497
    const/4 v0, 0x0

    return-object v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getApplicationRestrictions()Landroid/os/Bundle;
    .locals 2

    .line 426
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 427
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 431
    :cond_0
    nop

    .line 432
    const/4 v0, 0x0

    return-object v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 546
    nop

    .line 547
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.content.APP_RESTRICTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 552
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 553
    .local v1, "xml":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, p1, v1}, Landroid/content/RestrictionsManager;->loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 548
    .end local v1    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist hasRestrictionsProvider()Z
    .locals 2

    .line 443
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Landroid/content/IRestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 448
    :cond_0
    nop

    .line 449
    const/4 v0, 0x0

    return v0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/PersistableBundle;

    .line 510
    if-eqz p1, :cond_4

    .line 513
    if-eqz p2, :cond_3

    .line 516
    const-string v0, "android.request.id"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    const-string v0, "android.response.result"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0, p1, p2}, Landroid/content/IRestrictionsManager;->notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    nop

    .line 529
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 520
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RESPONSE_KEY_RESULT must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "REQUEST_KEY_ID must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/os/PersistableBundle;

    .line 470
    if-eqz p1, :cond_3

    .line 473
    if-eqz p2, :cond_2

    .line 476
    if-eqz p3, :cond_1

    .line 480
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IRestrictionsManager;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    nop

    .line 487
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 477
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
