.class final Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
.super Ljava/lang/Exception;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/Translator$ServiceBinderReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutException"
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;-><init>(Ljava/lang/String;)V

    return-void
.end method
