.class public Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleableFrameworkFeatureInfo"
.end annotation


# instance fields
.field private blacklist mIconDrawableId:I

.field private final blacklist mLabelStringResourceId:I

.field private final blacklist mSettingKey:Ljava/lang/String;

.field private final blacklist mSettingOffValue:Ljava/lang/String;

.field private final blacklist mSettingOnValue:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "settingKey"    # Ljava/lang/String;
    .param p2, "settingOnValue"    # Ljava/lang/String;
    .param p3, "settingOffValue"    # Ljava/lang/String;
    .param p4, "labelStringResourceId"    # I

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mSettingKey:Ljava/lang/String;

    .line 672
    iput-object p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mSettingOnValue:Ljava/lang/String;

    .line 673
    iput-object p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mSettingOffValue:Ljava/lang/String;

    .line 674
    iput p4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mLabelStringResourceId:I

    .line 675
    return-void
.end method


# virtual methods
.method public blacklist getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 699
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mLabelStringResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSettingKey()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mSettingKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSettingOffValue()Ljava/lang/String;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mSettingOffValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSettingOnValue()Ljava/lang/String;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->mSettingOnValue:Ljava/lang/String;

    return-object v0
.end method
