.class Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSetupCompleteObserver"
.end annotation


# instance fields
.field private blacklist mIsRegistered:Z

.field private blacklist mUserId:I

.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;I)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 578
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 579
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 569
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 580
    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 581
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    .line 584
    :cond_0
    return-void
.end method

.method private blacklist isUserSetupComplete()Z
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method private blacklist registerObserver()V
    .locals 4

    .line 592
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 593
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 596
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 595
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 599
    return-void
.end method

.method private blacklist setEmptyShortcutTargetIfNeeded()V
    .locals 7

    .line 623
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 625
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "shortcutTargets":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 628
    return-void

    .line 631
    :cond_0
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x104023a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "defaultShortcutTarget":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v4, v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v5

    .line 634
    invoke-virtual {v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 635
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    .line 636
    .local v4, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 637
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 638
    return-void

    .line 636
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 642
    .end local v5    # "i":I
    :cond_2
    iget v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string v6, ""

    invoke-static {v0, v2, v6, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 644
    return-void
.end method

.method private blacklist unregisterObserver()V
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 611
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 615
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 603
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    .line 605
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->setEmptyShortcutTargetIfNeeded()V

    .line 607
    :cond_0
    return-void
.end method

.method blacklist onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 647
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 648
    return-void

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    .line 651
    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 652
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    .line 655
    :cond_1
    return-void
.end method
