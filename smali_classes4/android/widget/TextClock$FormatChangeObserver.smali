.class Landroid/widget/TextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextClock;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextClock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 155
    iput-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    .line 156
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 161
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    .line 162
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    .line 163
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 167
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    .line 168
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    .line 169
    return-void
.end method
