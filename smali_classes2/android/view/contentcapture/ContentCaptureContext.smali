.class public final Landroid/view/contentcapture/ContentCaptureContext;
.super Ljava/lang/Object;
.source "ContentCaptureContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureContext$Builder;,
        Landroid/view/contentcapture/ContentCaptureContext$ContextCreationFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DISABLED_BY_APP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_DISABLED_BY_FLAG_SECURE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_RECONNECTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityId:Landroid/app/assist/ActivityId;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mDisplayId:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFlags:I

.field private final blacklist mHasClientContext:Z

.field private final blacklist mId:Landroid/content/LocusId;

.field private blacklist mParentSessionId:I

.field private final blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 411
    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureContext$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/view/contentcapture/ContentCaptureContext$Builder;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 136
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 137
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmId(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/content/LocusId;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    .line 140
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    .line 142
    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 143
    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    .line 144
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;I)V
    .locals 1
    .param p1, "original"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "extraFlags"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 148
    iget-boolean v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 149
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 150
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    .line 151
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    .line 152
    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    .line 153
    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    .line 154
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 155
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    .line 156
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V
    .locals 1
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "activityId"    # Landroid/app/assist/ActivityId;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "displayId"    # I
    .param p5, "windowToken"    # Landroid/os/IBinder;
    .param p6, "flags"    # I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 120
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 121
    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    goto :goto_0

    .line 123
    :cond_0
    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    .line 125
    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    .line 127
    :goto_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    .line 128
    iput p6, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    .line 129
    iput p4, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    .line 130
    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    .line 131
    iput-object p5, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    .line 132
    return-void
.end method

.method public static whitelist forLocusId(Ljava/lang/String;)Landroid/view/contentcapture/ContentCaptureContext;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 269
    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fromServer()Z
    .locals 1

    .line 364
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 342
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    if-eqz v0, :cond_1

    .line 346
    const-string v0, ", id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v0, p1}, Landroid/content/LocusId;->dump(Ljava/io/PrintWriter;)V

    .line 348
    :cond_1
    const-string v0, ", activityId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 349
    const-string v0, ", displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 350
    const-string v0, ", windowToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 351
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v0, :cond_2

    .line 352
    const-string v0, ", parentId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 354
    :cond_2
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    if-lez v0, :cond_3

    .line 355
    const-string v0, ", flags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 357
    :cond_3
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 359
    const-string v0, ", hasExtras"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    :cond_4
    return-void
.end method

.method public whitelist getActivityComponent()Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getActivityId()Landroid/app/assist/ActivityId;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 205
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    :goto_0
    return-object v0
.end method

.method public whitelist getDisplayId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 234
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFlags()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 261
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    return v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist getParentSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 217
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    .line 217
    :goto_0
    return-object v0
.end method

.method public whitelist getTaskId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 183
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getWindowToken()Landroid/os/IBinder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 248
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist setParentSessionId(I)V
    .locals 0
    .param p1, "parentSessionId"    # I

    .line 223
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    .line 224
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    const-string v2, ", activityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string v2, ", windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 376
    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_0
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 381
    const-string v1, ", hasExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v1, :cond_2

    .line 385
    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 397
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 400
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 402
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 403
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 406
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    .line 409
    :cond_1
    return-void
.end method
