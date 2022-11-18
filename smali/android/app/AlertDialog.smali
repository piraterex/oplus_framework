.class public Landroid/app/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o LAYOUT_HINT_NONE:I = 0x0

.field public static final greylist-max-o LAYOUT_HINT_SIDE:I = 0x1

.field public static final whitelist THEME_DEVICE_DEFAULT_DARK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_DEVICE_DEFAULT_LIGHT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_HOLO_DARK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_HOLO_LIGHT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_TRADITIONAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private greylist mAlert:Lcom/android/internal/app/AlertController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlert(Landroid/app/AlertDialog;)Lcom/android/internal/app/AlertController;
    .locals 0

    iget-object p0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    return-object p0
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 151
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 206
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .line 209
    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 212
    iget-object v0, p0, Landroid/app/AlertDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 213
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 214
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 174
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 175
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 176
    return-void
.end method

.method static greylist-max-o resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .line 217
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 218
    const v0, 0x1030413

    return v0

    .line 219
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 220
    const v0, 0x103041c

    return v0

    .line 221
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 222
    const v0, 0x1030423

    return v0

    .line 223
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 224
    const v0, 0x10302d1

    return v0

    .line 225
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 226
    const v0, 0x10302d2

    return v0

    .line 227
    :cond_4
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    return p1

    .line 231
    :cond_5
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 232
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 233
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method


# virtual methods
.method public whitelist getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 248
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 443
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 444
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 445
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 449
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 450
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 455
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 456
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 343
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 344
    return-void
.end method

.method public whitelist setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .line 329
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 330
    return-void
.end method

.method public whitelist setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 385
    return-void
.end method

.method public whitelist setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 353
    return-void
.end method

.method public whitelist setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 398
    return-void
.end method

.method public whitelist setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 362
    return-void
.end method

.method public whitelist setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 411
    return-void
.end method

.method public whitelist setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 371
    return-void
.end method

.method greylist-max-o setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .line 315
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 316
    return-void
.end method

.method public whitelist setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 270
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 271
    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 419
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 420
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 423
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 424
    return-void
.end method

.method public whitelist setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .line 432
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 433
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/app/AlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 434
    iget-object v1, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 435
    return-void
.end method

.method public whitelist setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .line 438
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 439
    return-void
.end method

.method public whitelist setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 274
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method

.method public greylist-max-o setMessageHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .line 285
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setMessageHyphenationFrequency(I)V

    .line 286
    return-void
.end method

.method public greylist-max-o setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 279
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setMessageMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 280
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 262
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method public whitelist setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 292
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method public whitelist setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 307
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 308
    return-void
.end method
