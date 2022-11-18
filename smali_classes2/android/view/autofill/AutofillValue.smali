.class public final Landroid/view/autofill/AutofillValue;
.super Ljava/lang/Object;
.source "AutofillValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AutofillValue"


# instance fields
.field private final greylist-max-o mType:I

.field private final greylist-max-o mValue:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 244
    new-instance v0, Landroid/view/autofill/AutofillValue$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillValue$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    .line 55
    iput-object p2, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    .line 225
    packed-switch v0, :pswitch_data_0

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not valid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 238
    goto :goto_1

    .line 234
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 235
    goto :goto_1

    .line 230
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .local v0, "rawValue":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 232
    goto :goto_1

    .line 227
    .end local v0    # "rawValue":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    .line 228
    nop

    .line 242
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/autofill/AutofillValue-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist forDate(J)Landroid/view/autofill/AutofillValue;
    .locals 3
    .param p0, "value"    # J

    .line 304
    new-instance v0, Landroid/view/autofill/AutofillValue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist forList(I)Landroid/view/autofill/AutofillValue;
    .locals 3
    .param p0, "value"    # I

    .line 295
    new-instance v0, Landroid/view/autofill/AutofillValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 270
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forText() not called on main thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillValue"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/autofill/AutofillValue;

    const/4 v1, 0x1

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    .line 274
    :goto_0
    return-object v0
.end method

.method public static whitelist forToggle(Z)Landroid/view/autofill/AutofillValue;
    .locals 3
    .param p0, "value"    # Z

    .line 285
    new-instance v0, Landroid/view/autofill/AutofillValue;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/view/autofill/AutofillValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 164
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 167
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/view/autofill/AutofillValue;

    .line 169
    .local v1, "other":Landroid/view/autofill/AutofillValue;
    iget v2, p0, Landroid/view/autofill/AutofillValue;->mType:I

    iget v3, v1, Landroid/view/autofill/AutofillValue;->mType:I

    if-eq v2, v3, :cond_3

    return v0

    .line 171
    :cond_3
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 174
    :cond_4
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    iget-object v2, v1, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getDateValue()J
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "value must be a date value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getListValue()I
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "value must be a list value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getTextValue()Ljava/lang/CharSequence;
    .locals 4

    .line 66
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "value must be a text value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getToggleValue()Z
    .locals 4

    .line 87
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "value must be a toggle value, not type=%d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 159
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    iget-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist isDate()Z
    .locals 2

    .line 139
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isList()Z
    .locals 2

    .line 118
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isText()Z
    .locals 2

    .line 76
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isToggle()Z
    .locals 2

    .line 97
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 180
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v1, "[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    .local v0, "string":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    :goto_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/view/autofill/AutofillValue;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Landroid/view/autofill/AutofillValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 209
    nop

    .line 220
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
