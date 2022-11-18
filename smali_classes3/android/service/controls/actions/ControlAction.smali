.class public abstract Landroid/service/controls/actions/ControlAction;
.super Ljava/lang/Object;
.source "ControlAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/actions/ControlAction$ResponseResult;,
        Landroid/service/controls/actions/ControlAction$ActionType;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

.field private static final blacklist KEY_ACTION_TYPE:Ljava/lang/String; = "key_action_type"

.field private static final blacklist KEY_CHALLENGE_VALUE:Ljava/lang/String; = "key_challenge_value"

.field private static final blacklist KEY_TEMPLATE_ID:Ljava/lang/String; = "key_template_id"

.field private static final blacklist NUM_RESPONSE_TYPES:I = 0x6

.field public static final whitelist RESPONSE_CHALLENGE_ACK:I = 0x3

.field public static final whitelist RESPONSE_CHALLENGE_PASSPHRASE:I = 0x5

.field public static final whitelist RESPONSE_CHALLENGE_PIN:I = 0x4

.field public static final whitelist RESPONSE_FAIL:I = 0x2

.field public static final whitelist RESPONSE_OK:I = 0x1

.field public static final whitelist RESPONSE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ControlAction"

.field public static final whitelist TYPE_BOOLEAN:I = 0x1

.field public static final whitelist TYPE_COMMAND:I = 0x5

.field public static final whitelist TYPE_ERROR:I = -0x1

.field public static final whitelist TYPE_FLOAT:I = 0x2

.field public static final whitelist TYPE_MODE:I = 0x4


# instance fields
.field private final blacklist mChallengeValue:Ljava/lang/String;

.field private final blacklist mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Landroid/service/controls/actions/ControlAction$1;

    invoke-direct {v0}, Landroid/service/controls/actions/ControlAction$1;-><init>()V

    sput-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    .line 167
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const-string/jumbo v0, "key_template_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "key_challenge_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    .line 184
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/controls/actions/ControlAction-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/controls/actions/ControlAction;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "challengeValue"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iput-object p1, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    .line 176
    return-void
.end method

.method static blacklist createActionFromBundle(Landroid/os/Bundle;)Landroid/service/controls/actions/ControlAction;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 227
    const-string v0, "ControlAction"

    if-nez p0, :cond_0

    .line 228
    const-string v1, "Null bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0

    .line 231
    :cond_0
    const/4 v1, -0x1

    const-string/jumbo v2, "key_action_type"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 244
    :pswitch_0
    :try_start_0
    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    goto :goto_0

    .line 241
    :pswitch_1
    new-instance v2, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/CommandAction;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 239
    :pswitch_2
    new-instance v2, Landroid/service/controls/actions/ModeAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/ModeAction;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 237
    :pswitch_3
    new-instance v2, Landroid/service/controls/actions/FloatAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/FloatAction;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 235
    :pswitch_4
    new-instance v2, Landroid/service/controls/actions/BooleanAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/BooleanAction;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 244
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error creating action"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist getErrorAction()Landroid/service/controls/actions/ControlAction;
    .locals 1

    .line 257
    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0
.end method

.method public static final whitelist isValidResponse(I)Z
    .locals 1
    .param p0, "response"    # I

    .line 106
    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract whitelist getActionType()I
.end method

.method public whitelist getChallengeValue()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/service/controls/actions/ControlAction;->getActionType()I

    move-result v1

    const-string/jumbo v2, "key_action_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    iget-object v1, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    const-string/jumbo v2, "key_template_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    const-string/jumbo v2, "key_challenge_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v0
.end method

.method public whitelist getTemplateId()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method
