.class public final synthetic Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void
.end method
