.class public final Lcom/android/internal/accessibility/util/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# static fields
.field private static final blacklist sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertToKey(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .line 153
    packed-switch p0, :pswitch_data_0

    .line 161
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported user shortcut type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_1
    const-string v0, "accessibility_display_magnification_enabled"

    return-object v0

    .line 157
    :pswitch_2
    const-string v0, "accessibility_shortcut_target_service"

    return-object v0

    .line 155
    :pswitch_3
    const-string v0, "accessibility_button_targets"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist convertToUserType(I)I
    .locals 3
    .param p0, "type"    # I

    .line 173
    packed-switch p0, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported shortcut type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 175
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentId"    # Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "targetKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "targetString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 116
    return v3

    .line 119
    :cond_0
    sget-object v2, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 120
    :goto_0
    sget-object v2, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    const/4 v3, 0x1

    return v3

    .line 125
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 127
    :cond_2
    return v3
.end method

.method public static blacklist isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentId"    # Ljava/lang/String;

    .line 140
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 142
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "requiredTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static blacklist optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentId"    # Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "targetKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "targetString":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 65
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    return-void
.end method

.method public static blacklist optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "componentId"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "targetsKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "targetsValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 96
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    return-void
.end method
