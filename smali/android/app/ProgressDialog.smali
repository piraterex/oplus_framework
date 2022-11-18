.class public Landroid/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist STYLE_HORIZONTAL:I = 0x1

.field public static final whitelist STYLE_SPINNER:I


# instance fields
.field private greylist-max-o mHasStarted:Z

.field private greylist-max-o mIncrementBy:I

.field private greylist-max-o mIncrementSecondaryBy:I

.field private greylist-max-o mIndeterminate:Z

.field private greylist-max-o mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMax:I

.field private greylist-max-o mMessage:Ljava/lang/CharSequence;

.field private greylist mMessageView:Landroid/widget/TextView;

.field private greylist-max-p mProgress:Landroid/widget/ProgressBar;

.field private greylist-max-o mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist mProgressNumber:Landroid/widget/TextView;

.field private greylist-max-o mProgressNumberFormat:Ljava/lang/String;

.field private greylist-max-o mProgressPercent:Landroid/widget/TextView;

.field private greylist-max-o mProgressPercentFormat:Ljava/text/NumberFormat;

.field private greylist-max-o mProgressStyle:I

.field private greylist-max-o mProgressVal:I

.field private greylist-max-o mSecondaryProgressVal:I

.field private greylist-max-o mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgress(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressNumber(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressNumberFormat(Landroid/app/ProgressDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressPercent(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressPercentFormat(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 100
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 113
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 114
    return-void
.end method

.method private greylist-max-o initFormats()V
    .locals 2

    .line 117
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 120
    return-void
.end method

.method private greylist-max-o onProgressChanged()V
    .locals 2

    .line 516
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    :cond_0
    return-void
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .line 147
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .line 164
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 184
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 188
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 189
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 191
    return-object v0
.end method


# virtual methods
.method public whitelist getMax()I
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 353
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public whitelist getProgress()I
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 329
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public whitelist getSecondaryProgress()I
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 341
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public whitelist incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 375
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 377
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 379
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    .line 381
    :goto_0
    return-void
.end method

.method public whitelist incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 390
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 392
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 394
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    .line 396
    :goto_0
    return-void
.end method

.method public whitelist isIndeterminate()Z
    .locals 1

    .line 455
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 458
    :cond_0
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 196
    iget-object v0, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 197
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 200
    .local v1, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const v4, 0x102000d

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 205
    new-instance v2, Landroid/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog$1;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v2, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 230
    const/16 v2, 0xd

    const v5, 0x1090031

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 234
    const v3, 0x102044b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 235
    const v3, 0x102044c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 237
    .end local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 238
    :cond_0
    const/16 v2, 0x12

    const v5, 0x10900f4

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 241
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 242
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 243
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 245
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    iget v2, p0, Landroid/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_1

    .line 247
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 249
    :cond_1
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_2

    .line 250
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 252
    :cond_2
    iget v2, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_3

    .line 253
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 255
    :cond_3
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_4

    .line 256
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 258
    :cond_4
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_5

    .line 259
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 261
    :cond_5
    iget-object v2, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 262
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_6
    iget-object v2, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 265
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_7
    iget-object v2, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 268
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 270
    :cond_8
    iget-boolean v2, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 271
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 272
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 273
    return-void
.end method

.method public whitelist onStart()V
    .locals 1

    .line 277
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 279
    return-void
.end method

.method protected whitelist onStop()V
    .locals 1

    .line 283
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 285
    return-void
.end method

.method public whitelist setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .line 442
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 445
    :cond_0
    iput-boolean p1, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    .line 447
    :goto_0
    return-void
.end method

.method public whitelist setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 422
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 425
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 427
    :goto_0
    return-void
.end method

.method public whitelist setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 360
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 362
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 364
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mMax:I

    .line 366
    :goto_0
    return-void
.end method

.method public whitelist setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 463
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 464
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 465
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 470
    :cond_1
    iput-object p1, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 472
    :goto_0
    return-void
.end method

.method public whitelist setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .line 295
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 297
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 299
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    .line 301
    :goto_0
    return-void
.end method

.method public whitelist setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 406
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 409
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    :goto_0
    return-void
.end method

.method public whitelist setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .line 498
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 499
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 500
    return-void
.end method

.method public whitelist setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 511
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 512
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 513
    return-void
.end method

.method public whitelist setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 486
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 487
    return-void
.end method

.method public whitelist setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .line 312
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 314
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 316
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    .line 318
    :goto_0
    return-void
.end method
