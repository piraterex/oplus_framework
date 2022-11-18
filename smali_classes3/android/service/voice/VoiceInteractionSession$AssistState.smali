.class public final Landroid/service/voice/VoiceInteractionSession$AssistState;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistState"
.end annotation


# instance fields
.field private final blacklist mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

.field private final blacklist mContent:Landroid/app/assist/AssistContent;

.field private final blacklist mCount:I

.field private final blacklist mData:Landroid/os/Bundle;

.field private final blacklist mIndex:I

.field private final blacklist mStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession$ActivityId;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    .locals 0
    .param p1, "activityId"    # Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "structure"    # Landroid/app/assist/AssistStructure;
    .param p4, "content"    # Landroid/app/assist/AssistContent;
    .param p5, "index"    # I
    .param p6, "count"    # I

    .line 2180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2181
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

    .line 2182
    iput p5, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    .line 2183
    iput p6, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mCount:I

    .line 2184
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mData:Landroid/os/Bundle;

    .line 2185
    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mStructure:Landroid/app/assist/AssistStructure;

    .line 2186
    iput-object p4, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mContent:Landroid/app/assist/AssistContent;

    .line 2187
    return-void
.end method


# virtual methods
.method public whitelist getActivityId()Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .locals 1

    .line 2216
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

    return-object v0
.end method

.method public whitelist getAssistContent()Landroid/app/assist/AssistContent;
    .locals 1

    .line 2250
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mContent:Landroid/app/assist/AssistContent;

    return-object v0
.end method

.method public whitelist getAssistData()Landroid/os/Bundle;
    .locals 1

    .line 2226
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getAssistStructure()Landroid/app/assist/AssistStructure;
    .locals 1

    .line 2238
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 1

    .line 2209
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mCount:I

    return v0
.end method

.method public whitelist getIndex()I
    .locals 1

    .line 2201
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    return v0
.end method

.method public whitelist isFocused()Z
    .locals 1

    .line 2193
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
