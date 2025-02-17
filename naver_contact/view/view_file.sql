create view v_member as
SELECT
	a.contSeq,
	a.contFirstName,
    a.contLastName,
    a.contImportant,
    b.phonList,
    b.phonNumber,
    c.mailAddr,
    d.addrList,
    d.addrZipCode,
    d.addrAddress,
    e.anniCalendar,
    e.anniList,
    e.anniDate,
    f.compName,
    f.compDepartment,
    f.compPosition,
    g.messList,
    g.messAddress,
    h.pageAddress,
    j.grouName
FROM
	contactadd a
    LEFT JOIN contactphone b ON b.contactadd_contSeq = a.contSeq and b.phonMain = 1
    LEFT JOIN contactemail c ON c.contactAdd_contSeq = a.contSeq and c.mailMain = 1
    LEFT JOIN contactaddress d ON d.contactAdd_contSeq = a.contSeq and d.addrMain = 1
    LEFT JOIN contactanniversary e ON e.contactAdd_contSeq = a.contSeq and e.anniMain = 1
    LEFT JOIN contactcompany f ON f.contactAdd_contSeq = a.contSeq and f.compMain = 1
    LEFT JOIN contactmessenger g ON g.contactAdd_contSeq = a.contSeq and g.messMain = 1
    LEFT JOIN contactpage h ON h.contactAdd_contSeq = a.contSeq and h.pageMain = 1
    LEFT JOIN contactgroup i ON i.contactAdd_contSeq = a.contSeq
    LEFT JOIN groupname j ON j.grouSeq = i.GroupName_grouSeq
    -- LEFT JOIN contactphone b ON b.contactadd_contSeq = a.contSeq and b.phonMain = 1
    -- INNER JOIN contactphone b ON b.contactadd_contSeq = a.contSeq
    -- JOIN contactphone b ON b.contactadd_contSeq = a.contSeq and b.phonMain = 1
    -- JOIN contactemail c ON c.contactAdd_contSeq = a.contSeq
;