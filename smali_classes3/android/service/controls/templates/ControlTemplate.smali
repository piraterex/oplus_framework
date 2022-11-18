.class public abstract Landroid/service/controls/templates/ControlTemplate;
.super Ljava/lang/Object;
.source "ControlTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/templates/ControlTemplate$TemplateType;
    }
.end annotation


# static fields
.field private static final blacklist ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

.field private static final blacklist KEY_TEMPLATE_ID:Ljava/lang/String; = "key_template_id"

.field private static final blacklist KEY_TEMPLATE_TYPE:Ljava/lang/String; = "key_template_type"

.field public static final blacklist NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

.field private static final blacklist TAG:Ljava/lang/String; = "ControlTemplate"

.field public static final whitelist TYPE_ERROR:I = -0x1

.field public static final whitelist TYPE_NO_TEMPLATE:I = 0x0

.field public static final whitelist TYPE_RANGE:I = 0x2

.field public static final whitelist TYPE_STATELESS:I = 0x8

.field public static final whitelist TYPE_TEMPERATURE:I = 0x7

.field public static final whitelist TYPE_THUMBNAIL:I = 0x3

.field public static final whitelist TYPE_TOGGLE:I = 0x1

.field public static final whitelist TYPE_TOGGLE_RANGE:I = 0x6


# instance fields
.field private final blacklist mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/service/controls/templates/ControlTemplate$1;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplate$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    .line 66
    new-instance v0, Landroid/service/controls/templates/ControlTemplate$2;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplate$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-string/jumbo v0, "key_template_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    .line 168
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "templateId"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iput-object p1, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    .line 176
    return-void
.end method

.method static blacklist createTemplateFromBundle(Landroid/os/Bundle;)Landroid/service/controls/templates/ControlTemplate;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 193
    const-string v0, "ControlTemplate"

    if-nez p0, :cond_0

    .line 194
    const-string v1, "Null bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0

    .line 197
    :cond_0
    const/4 v1, -0x1

    const-string/jumbo v2, "key_template_type"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 216
    :pswitch_0
    :try_start_0
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    goto :goto_0

    .line 211
    :pswitch_1
    new-instance v2, Landroid/service/controls/templates/StatelessTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/StatelessTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 209
    :pswitch_2
    new-instance v2, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/TemperatureControlTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 207
    :pswitch_3
    new-instance v2, Landroid/service/controls/templates/ToggleRangeTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/ToggleRangeTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 205
    :pswitch_4
    new-instance v2, Landroid/service/controls/templates/ThumbnailTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/ThumbnailTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 203
    :pswitch_5
    new-instance v2, Landroid/service/controls/templates/RangeTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/RangeTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 201
    :pswitch_6
    new-instance v2, Landroid/service/controls/templates/ToggleTemplate;

    invoke-direct {v2, p0}, Landroid/service/controls/templates/ToggleTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 213
    :pswitch_7
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 216
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error creating template"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist getErrorTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 1

    .line 229
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public static whitelist getNoTemplateObject()Landroid/service/controls/templates/ControlTemplate;
    .locals 1

    .line 246
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method


# virtual methods
.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateType()I

    move-result v1

    const-string/jumbo v2, "key_template_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget-object v1, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    const-string/jumbo v2, "key_template_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method public whitelist getTemplateId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist getTemplateType()I
.end method

.method public blacklist prepareTemplateForBinder(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    return-void
.end method
