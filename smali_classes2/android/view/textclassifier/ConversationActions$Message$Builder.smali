.class public final Landroid/view/textclassifier/ConversationActions$Message$Builder;
.super Ljava/lang/Object;
.source "ConversationActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAuthor:Landroid/app/Person;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mReferenceTime:Ljava/time/ZonedDateTime;

.field private blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/app/Person;)V
    .locals 1
    .param p1, "author"    # Landroid/app/Person;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mAuthor:Landroid/app/Person;

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/ConversationActions$Message;
    .locals 7

    .line 272
    new-instance v6, Landroid/view/textclassifier/ConversationActions$Message;

    iget-object v1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mAuthor:Landroid/app/Person;

    iget-object v2, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 275
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    iget-object v3, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v3, v0

    .line 276
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/ConversationActions$Message;-><init>(Landroid/app/Person;Ljava/time/ZonedDateTime;Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions$Message-IA;)V

    .line 272
    return-object v6
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationActions$Message$Builder;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 265
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mExtras:Landroid/os/Bundle;

    .line 266
    return-object p0
.end method

.method public whitelist setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/ConversationActions$Message$Builder;
    .locals 0
    .param p1, "referenceTime"    # Ljava/time/ZonedDateTime;

    .line 258
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 259
    return-object p0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/view/textclassifier/ConversationActions$Message$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 248
    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Message$Builder;->mText:Ljava/lang/CharSequence;

    .line 249
    return-object p0
.end method
