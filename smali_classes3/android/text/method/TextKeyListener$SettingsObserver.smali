.class Landroid/text/method/TextKeyListener$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/text/method/TextKeyListener;


# direct methods
.method public constructor blacklist <init>(Landroid/text/method/TextKeyListener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 277
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 278
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 282
    iget-object v0, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->-$$Nest$fgetmResolver(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->-$$Nest$fgetmResolver(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 284
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 285
    iget-object v2, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v2, v1}, Landroid/text/method/TextKeyListener;->-$$Nest$fputmPrefsInited(Landroid/text/method/TextKeyListener;Z)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->-$$Nest$mupdatePrefs(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V

    .line 289
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :goto_0
    goto :goto_1

    .line 290
    :cond_1
    iget-object v0, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->-$$Nest$fputmPrefsInited(Landroid/text/method/TextKeyListener;Z)V

    .line 292
    :goto_1
    return-void
.end method
