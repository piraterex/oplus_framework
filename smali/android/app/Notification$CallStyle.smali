.class public Landroid/app/Notification$CallStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStyle"
.end annotation


# static fields
.field public static final blacklist CALL_TYPE_INCOMING:I = 0x1

.field public static final blacklist CALL_TYPE_ONGOING:I = 0x2

.field public static final blacklist CALL_TYPE_SCREENING:I = 0x3

.field private static final blacklist KEY_ACTION_PRIORITY:Ljava/lang/String; = "key_action_priority"


# instance fields
.field private blacklist mAnswerButtonColor:Ljava/lang/Integer;

.field private blacklist mAnswerIntent:Landroid/app/PendingIntent;

.field private blacklist mCallType:I

.field private blacklist mDeclineButtonColor:Ljava/lang/Integer;

.field private blacklist mDeclineIntent:Landroid/app/PendingIntent;

.field private blacklist mHangUpIntent:Landroid/app/PendingIntent;

.field private blacklist mIsVideo:Z

.field private blacklist mPerson:Landroid/app/Person;

.field private blacklist mVerificationIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mVerificationText:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 9538
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9539
    return-void
.end method

.method private constructor blacklist <init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "person"    # Landroid/app/Person;
    .param p3, "hangUpIntent"    # Landroid/app/PendingIntent;
    .param p4, "declineIntent"    # Landroid/app/PendingIntent;
    .param p5, "answerIntent"    # Landroid/app/PendingIntent;

    .line 9613
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9614
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9617
    iput p1, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    .line 9618
    iput-object p2, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 9619
    iput-object p5, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 9620
    iput-object p4, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 9621
    iput-object p3, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 9622
    return-void

    .line 9615
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "person must have a non-empty a name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 9895
    const/4 v0, 0x0

    .line 9896
    .local v0, "iconContentDescription":Ljava/lang/String;
    const/4 v1, 0x1

    .line 9897
    .local v1, "showDivider":Z
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x102057f

    if-eqz v2, :cond_0

    .line 9898
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 9899
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9900
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 9899
    invoke-virtual {p1, v5, v4, v2, v6}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 9901
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9902
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x104063c

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9904
    const/4 v1, 0x0

    goto :goto_0

    .line 9906
    :cond_0
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9908
    :goto_0
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v6, 0x1020580

    if-nez v2, :cond_1

    .line 9909
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9910
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, p1, v6, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9911
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9912
    const/4 v0, 0x0

    goto :goto_1

    .line 9914
    :cond_1
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9915
    const/4 v1, 0x0

    .line 9917
    :goto_1
    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 9918
    const v2, 0x102057e

    if-eqz v1, :cond_2

    .line 9919
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9920
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, p1, v2, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_2

    .line 9922
    :cond_2
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9924
    :goto_2
    return-void
.end method

.method private blacklist fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9972
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9973
    .local v0, "sender":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .line 9974
    const-string v1, "android.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9976
    :cond_1
    const-string v1, "android.text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    .line 9977
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9979
    :cond_2
    return-void
.end method

.method public static whitelist forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 7
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "declineIntent"    # Landroid/app/PendingIntent;
    .param p2, "answerIntent"    # Landroid/app/PendingIntent;

    .line 9555
    new-instance v6, Landroid/app/Notification$CallStyle;

    .line 9557
    const-string v0, "declineIntent is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/PendingIntent;

    .line 9558
    const-string v0, "answerIntent is required"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 9555
    return-object v6
.end method

.method public static whitelist forOngoingCall(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 7
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "hangUpIntent"    # Landroid/app/PendingIntent;

    .line 9575
    new-instance v6, Landroid/app/Notification$CallStyle;

    .line 9576
    const-string v0, "hangUpIntent is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 9575
    return-object v6
.end method

.method public static whitelist forScreeningCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 7
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "hangUpIntent"    # Landroid/app/PendingIntent;
    .param p2, "answerIntent"    # Landroid/app/PendingIntent;

    .line 9597
    new-instance v6, Landroid/app/Notification$CallStyle;

    .line 9598
    const-string v0, "hangUpIntent is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/PendingIntent;

    .line 9600
    const-string v0, "answerIntent is required"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 9597
    return-object v6
.end method

.method private blacklist getDefaultText()Ljava/lang/String;
    .locals 2

    .line 9928
    iget v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    packed-switch v0, :pswitch_data_0

    .line 9936
    const/4 v0, 0x0

    return-object v0

    .line 9934
    :pswitch_0
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9932
    :pswitch_1
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9930
    :pswitch_2
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z
    .locals 2
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 9788
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_action_priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;
    .locals 6
    .param p1, "icon"    # I
    .param p2, "title"    # I
    .param p3, "colorInt"    # Ljava/lang/Integer;
    .param p4, "defaultColorRes"    # I
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 9773
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$misCallActionColorCustomizable(Landroid/app/Notification$Builder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9774
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 9776
    :cond_1
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const-string v1, ""

    invoke-static {v1, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    .line 9777
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 9778
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x12

    .line 9777
    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v2, p5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 9780
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 9781
    .local v0, "action":Landroid/app/Notification$Action;
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "key_action_priority"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9782
    return-object v0
.end method

.method private blacklist makeAnswerAction()Landroid/app/Notification$Action;
    .locals 6

    .line 9762
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 9763
    :cond_0
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    if-eqz v0, :cond_1

    const v1, 0x1080357

    goto :goto_0

    :cond_1
    const v1, 0x1080356

    .line 9764
    :goto_0
    if-eqz v0, :cond_2

    const v0, 0x10401e0

    move v2, v0

    goto :goto_1

    .line 9765
    :cond_2
    const v0, 0x10401df

    move v2, v0

    :goto_1
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    const v4, 0x10600af

    .line 9762
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private blacklist makeCallLayout(I)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "viewType"    # I

    .line 9844
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 9845
    .local v0, "isCollapsed":Z
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 9846
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 9847
    .local v4, "title":Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const-string v7, "android.text"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 9848
    .local v6, "text":Ljava/lang/CharSequence;
    if-nez v6, :cond_2

    .line 9849
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v6

    .line 9853
    :cond_2
    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v7, v7, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v7}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v7

    .line 9854
    invoke-virtual {v7, p1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v7

    .line 9855
    invoke-virtual {v7, v2}, Landroid/app/Notification$StandardTemplateParams;->callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v7

    .line 9856
    invoke-virtual {v7, v2}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v7

    .line 9857
    invoke-virtual {v7, v2}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v7

    .line 9858
    invoke-virtual {v7, v2}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 9859
    invoke-virtual {v2, v0}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    const v7, 0x1020281

    .line 9860
    invoke-virtual {v2, v7}, Landroid/app/Notification$StandardTemplateParams;->titleViewId(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 9861
    invoke-virtual {v2, v4}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 9862
    invoke-virtual {v2, v6}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v8, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 9863
    invoke-static {v7, v8}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 9864
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9866
    if-eqz v0, :cond_3

    .line 9867
    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v8, 0x10900bd

    invoke-static {v7, v8, v2, v5}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v5

    .local v5, "contentView":Landroid/widget/RemoteViews;
    goto :goto_2

    .line 9870
    .end local v5    # "contentView":Landroid/widget/RemoteViews;
    :cond_3
    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v8, 0x10900b8

    invoke-static {v7, v8, v2, v5}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 9875
    .restart local v5    # "contentView":Landroid/widget/RemoteViews;
    :goto_2
    iget-boolean v7, v2, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-nez v7, :cond_4

    .line 9876
    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v8, 0x10201ef

    invoke-static {v7, v5, v8, v2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9877
    invoke-virtual {v5, v8, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9879
    :cond_4
    invoke-direct {p0, v5, v2}, Landroid/app/Notification$CallStyle;->bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 9882
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9883
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 9882
    const v7, 0x10204ef

    const-string/jumbo v8, "setLayoutColor"

    invoke-virtual {v5, v7, v8, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9884
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9885
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 9884
    const-string/jumbo v8, "setNotificationBackgroundColor"

    invoke-virtual {v5, v7, v8, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9886
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string/jumbo v8, "setLargeIcon"

    invoke-virtual {v5, v7, v8, v1}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 9888
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "setData"

    invoke-virtual {v5, v7, v8, v1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 9891
    return-object v5
.end method

.method private blacklist makeNegativeAction()Landroid/app/Notification$Action;
    .locals 12

    .line 9747
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_0

    .line 9748
    const v7, 0x1080358

    const v8, 0x10401e2

    iget-object v9, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v10, 0x10600b0

    iget-object v11, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0

    .line 9753
    :cond_0
    const v1, 0x1080358

    const v2, 0x10401e1

    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v4, 0x10600b0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9943
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 9944
    iget v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    const-string v1, "android.callType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9945
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    const-string v1, "android.callIsVideo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9946
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const-string v1, "android.callPerson"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9947
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 9948
    const-string v1, "android.verificationIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9950
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 9951
    const-string v1, "android.verificationText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9953
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 9954
    const-string v1, "android.answerIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9956
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 9957
    const-string v1, "android.declineIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9959
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 9960
    const-string v1, "android.hangUpIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9962
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 9963
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.answerColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9965
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 9966
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.declineColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9968
    :cond_6
    invoke-direct {p0, p1}, Landroid/app/Notification$CallStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 9969
    return-void
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 4
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 10014
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 10017
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$CallStyle;

    .line 10018
    .local v1, "otherS":Landroid/app/Notification$CallStyle;
    iget v2, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    iget-object v3, v1, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 10019
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 10020
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 10018
    :goto_1
    return v0

    .line 10015
    .end local v1    # "otherS":Landroid/app/Notification$CallStyle;
    :cond_3
    :goto_2
    return v0
.end method

.method public blacklist buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .line 9679
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    .line 9681
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9682
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/Notification$Action;

    iput-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 9683
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9684
    return-object p1
.end method

.method public blacklist displayCustomViewInline()Z
    .locals 1

    .line 9693
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionsListWithSystemActions()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 9800
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeNegativeAction()Landroid/app/Notification$Action;

    move-result-object v0

    .line 9801
    .local v0, "negativeAction":Landroid/app/Notification$Action;
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeAnswerAction()Landroid/app/Notification$Action;

    move-result-object v1

    .line 9805
    .local v1, "answerAction":Landroid/app/Notification$Action;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 9806
    .local v2, "firstAction":Landroid/app/Notification$Action;
    :goto_0
    if-nez v1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 9809
    .local v3, "lastAction":Landroid/app/Notification$Action;
    :goto_1
    const/4 v4, 0x3

    .line 9810
    .local v4, "nonContextualActionSlotsRemaining":I
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 9811
    .local v5, "resultActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    if-eqz v2, :cond_2

    .line 9812
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9813
    add-int/lit8 v4, v4, -0x1

    .line 9817
    :cond_2
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    .line 9818
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification$Action;

    .line 9819
    .local v8, "action":Landroid/app/Notification$Action;
    invoke-virtual {v8}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 9821
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9822
    :cond_3
    invoke-direct {p0, v8}, Landroid/app/Notification$CallStyle;->isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 9826
    :cond_4
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9827
    add-int/lit8 v4, v4, -0x1

    .line 9830
    :goto_3
    if-ne v4, v7, :cond_5

    .line 9831
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9832
    add-int/lit8 v4, v4, -0x1

    .line 9834
    .end local v8    # "action":Landroid/app/Notification$Action;
    :cond_5
    goto :goto_2

    .line 9837
    :cond_6
    if-lt v4, v7, :cond_7

    .line 9838
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9840
    :cond_7
    return-object v5
.end method

.method public blacklist hasSummaryInHeader()Z
    .locals 1

    .line 10006
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 9742
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 9727
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 9735
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist purgeResources()V
    .locals 1

    .line 9701
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 9702
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 9703
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 9705
    :cond_0
    return-void
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 9712
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 9713
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    .line 9714
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9715
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9716
    const v1, 0x105021b

    goto :goto_0

    .line 9717
    :cond_0
    const v1, 0x105021a

    .line 9714
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 9718
    .local v0, "rightIconSize":I
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 9720
    .end local v0    # "rightIconSize":I
    :cond_1
    return-void
.end method

.method protected blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9986
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 9987
    const-string v0, "android.callType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    .line 9988
    const-string v0, "android.callIsVideo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    .line 9989
    const-class v0, Landroid/app/Person;

    const-string v1, "android.callPerson"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 9990
    const-string v0, "android.verificationIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    .line 9991
    const-string v0, "android.verificationText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 9992
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "android.answerIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 9993
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "android.declineIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 9994
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "android.hangUpIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 9995
    const-string v0, "android.answerColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9996
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    .line 9997
    const-string v0, "android.declineColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9998
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-object v2, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    .line 9999
    return-void
.end method

.method public whitelist setAnswerButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .locals 1
    .param p1, "color"    # I

    .line 9661
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    .line 9662
    return-object p0
.end method

.method public whitelist setDeclineButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .locals 1
    .param p1, "color"    # I

    .line 9672
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    .line 9673
    return-object p0
.end method

.method public whitelist setIsVideo(Z)Landroid/app/Notification$CallStyle;
    .locals 0
    .param p1, "isVideo"    # Z

    .line 9630
    iput-boolean p1, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    .line 9631
    return-object p0
.end method

.method public whitelist setVerificationIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;
    .locals 0
    .param p1, "verificationIcon"    # Landroid/graphics/drawable/Icon;

    .line 9640
    iput-object p1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    .line 9641
    return-object p0
.end method

.method public whitelist setVerificationText(Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;
    .locals 1
    .param p1, "verificationText"    # Ljava/lang/CharSequence;

    .line 9650
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 9651
    return-object p0
.end method
