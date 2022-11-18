.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final blacklist FIRST_NO_ACCESSIBILITY_CALLBACK_MSG:I = 0x64

.field private static final greylist-max-o MSG_APP_PREPARATION_FINISHED:I = 0x8

.field private static final greylist-max-o MSG_APP_PREPARATION_TIMEOUT:I = 0x9

.field private static final blacklist MSG_CLEAR_ACCESSIBILITY_FOCUS:I = 0x65

.field private static final greylist-max-o MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final greylist-max-o MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final greylist-max-o MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final greylist-max-o MSG_FIND_FOCUS:I = 0x5

.field private static final greylist-max-o MSG_FOCUS_SEARCH:I = 0x6

.field private static final blacklist MSG_NOTIFY_OUTSIDE_TOUCH:I = 0x66

.field private static final greylist-max-o MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1

.field private static final greylist-max-o MSG_PREPARE_FOR_EXTRA_DATA_REQUEST:I = 0x7


# instance fields
.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1607
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1608
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1609
    return-void
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1613
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1614
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 1638
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1636
    :sswitch_0
    const-string v1, "MSG_NOTIFY_OUTSIDE_TOUCH"

    return-object v1

    .line 1634
    :sswitch_1
    const-string v1, "MSG_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v1

    .line 1632
    :sswitch_2
    const-string v1, "MSG_APP_PREPARATION_TIMEOUT"

    return-object v1

    .line 1630
    :sswitch_3
    const-string v1, "MSG_APP_PREPARATION_FINISHED"

    return-object v1

    .line 1628
    :sswitch_4
    const-string v1, "MSG_PREPARE_FOR_EXTRA_DATA_REQUEST"

    return-object v1

    .line 1626
    :sswitch_5
    const-string v1, "MSG_FOCUS_SEARCH"

    return-object v1

    .line 1624
    :sswitch_6
    const-string v1, "MSG_FIND_FOCUS"

    return-object v1

    .line 1622
    :sswitch_7
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT"

    return-object v1

    .line 1620
    :sswitch_8
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID"

    return-object v1

    .line 1618
    :sswitch_9
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    return-object v1

    .line 1616
    :sswitch_a
    const-string v1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1644
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1645
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 1680
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1677
    :sswitch_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mnotifyOutsideTouchUiThread(Landroid/view/AccessibilityInteractionController;)V

    .line 1678
    goto :goto_0

    .line 1674
    :sswitch_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mclearAccessibilityFocusUiThread(Landroid/view/AccessibilityInteractionController;)V

    .line 1675
    goto :goto_0

    .line 1671
    :sswitch_2
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mrequestPreparerTimeoutUiThread(Landroid/view/AccessibilityInteractionController;)V

    .line 1672
    goto :goto_0

    .line 1668
    :sswitch_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mrequestPreparerDoneUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1669
    goto :goto_0

    .line 1665
    :sswitch_4
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mprepareForExtraDataRequestUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1666
    goto :goto_0

    .line 1662
    :sswitch_5
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfocusSearchUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1663
    goto :goto_0

    .line 1659
    :sswitch_6
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindFocusUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1660
    goto :goto_0

    .line 1656
    :sswitch_7
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindAccessibilityNodeInfosByTextUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1657
    goto :goto_0

    .line 1653
    :sswitch_8
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindAccessibilityNodeInfosByViewIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1654
    goto :goto_0

    .line 1647
    :sswitch_9
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1648
    goto :goto_0

    .line 1650
    :sswitch_a
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mperformAccessibilityActionUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1651
    nop

    .line 1682
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method blacklist hasAccessibilityCallback(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 1685
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist hasUserInteractiveMessagesWaiting()Z
    .locals 1

    .line 1689
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasMessagesOrCallbacks()Z

    move-result v0

    return v0
.end method
