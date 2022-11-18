.class public final Landroid/security/ConfirmationPrompt$Builder;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/ConfirmationPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExtraData:[B

.field private greylist-max-o mPromptText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/ConfirmationPrompt;
    .locals 5

    .line 201
    iget-object v0, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Landroid/security/ConfirmationPrompt$Builder;->mExtraData:[B

    if-eqz v0, :cond_0

    .line 207
    new-instance v1, Landroid/security/ConfirmationPrompt;

    iget-object v2, p0, Landroid/security/ConfirmationPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/security/ConfirmationPrompt;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[BLandroid/security/ConfirmationPrompt-IA;)V

    return-object v1

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extraData must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "prompt text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setExtraData([B)Landroid/security/ConfirmationPrompt$Builder;
    .locals 0
    .param p1, "extraData"    # [B

    .line 190
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mExtraData:[B

    .line 191
    return-object p0
.end method

.method public whitelist setPromptText(Ljava/lang/CharSequence;)Landroid/security/ConfirmationPrompt$Builder;
    .locals 0
    .param p1, "promptText"    # Ljava/lang/CharSequence;

    .line 179
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    .line 180
    return-object p0
.end method
