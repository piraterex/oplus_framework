.class public Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameworkObjectProvider"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 706
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 712
    .local v0, "inNightMode":Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x10302d1

    goto :goto_1

    .line 713
    :cond_1
    const v1, 0x10302d2

    :goto_1
    nop

    .line 714
    .local v1, "themeId":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v2
.end method

.method public blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 740
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemUiContext()Landroid/content/Context;
    .locals 1

    .line 722
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 731
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    return-object v0
.end method

.method public blacklist makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "charSequence"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 718
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method
